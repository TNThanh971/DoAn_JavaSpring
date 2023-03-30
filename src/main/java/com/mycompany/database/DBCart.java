/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.model.Cart;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author truongthanh
 */
public class DBCart {

    DB db = new DB();

    //begin cart
    // list product by idUser
    public List<Cart> GetCartByIdUser(String idUser) {
        ResultSet rs = db.Query("select idProduct, productName, productUrlImage, productRentalPrice, productWeight, cart_product_quantity, productPrice from cart, product where product_id = idProduct and user_id = " + idUser);
        List<Cart> list = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    Cart c = new Cart();
                    c.setIdProduct(rs.getInt("idProduct"));
                    c.setProductName(rs.getString("productName"));
                    c.setImage(rs.getString("productUrlImage"));
                    c.setRentalPrice(rs.getFloat("productRentalPrice"));
                    c.setCartProductWeight(rs.getInt("productWeight"));
                    c.setCartProductQuantity(rs.getInt("cart_product_quantity"));
                    c.setProductPrice(rs.getFloat("productPrice"));
                    list.add(c);
                }
            } catch (SQLException ex) {
                System.out.println("error: " + ex.toString());
            }
        }
        return list;
    }

    // add products to cart
    public boolean AddProductToCart(String idUser, String idProduct, String quantity) {
        String[] params = new String[]{idUser, idProduct, quantity};
        try {
            if (CheckProductExistInCart(idUser, idProduct) != null) {
                if (UpdateProductToCart(idUser, idProduct, quantity) > 0) {
                    return true;
                } else {
                    return false;
                }
            } else {
                int rs = db.Update("insert into cart"
                        + "(user_id, product_id, cart_product_quantity) "
                        + "values(?,?,?)", params);
                try {
                    if (rs > 0) {
                        return true;
                    } else {
                        return false;
                    }
                } catch (Exception e) {
                    System.out.println(e);
                    return false;
                }
            }
        } catch (Exception e) {
            return false;
        }
    }

    // delete products from cart
    public int DelProductToCart(String idUser, String idProduct) {
        String[] params = new String[]{idUser, idProduct};
        int rs = db.Update("DELETE FROM cart WHERE user_id=? and product_id =?", params);
        if (rs > 0) {
            return 1;
        }
        return 0;
    }

    // delete products from cart
    public int UpdateProductToCart(String idUser, String idProduct, String quantity) {
        int new_quantity = GetProductQuantityFromCart(idUser, idProduct) + Integer.parseInt(quantity);
        String[] params = new String[]{Integer.toString(new_quantity), idUser, idProduct};
        int rs = db.Update("UPDATE cart SET cart_product_quantity=? WHERE user_id=? and product_id =?", params);
        if (rs > 0) {
            return 1;
        }
        return 0;
    }

    //end cart
    public Cart CheckProductExistInCart(String idUser, String idProduct) throws Exception {
        String[] params = new String[]{idUser, idProduct};
        ResultSet rs = db.Query("select * from cart where user_id = ? and product_id =?", params);
        try {
            if (rs != null) {
                while (rs.next()) {
                    Cart c = new Cart();
                    c.setIdUser(rs.getInt("user_id"));
                    c.setIdProduct(rs.getInt("product_id"));
                    return c;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int GetProductQuantityFromCart(String idUser, String idProduct) {
        String[] params = new String[]{idUser, idProduct};
        ResultSet rs = db.Query("select cart_product_quantity from cart where user_id = ? and product_id =?", params);
        try {
            if (rs != null) {
                int quantity = 0;
                while (rs.next()) {
                    quantity = rs.getInt("cart_product_quantity");
                }
                return quantity;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
    //delete cart
    public int DelCart(String idUser) {
        String[] params = new String[]{idUser};
        int rs = db.Update("DELETE FROM cart WHERE user_id=?", params);
        if (rs > 0) {
            return 1;
        }
        return 0;
    }
}
