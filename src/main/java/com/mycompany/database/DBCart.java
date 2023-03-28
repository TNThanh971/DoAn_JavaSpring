/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.model.Cart;
import java.sql.Connection;
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
        ResultSet rs = db.Query("select idProduct, productName, productUrlImage, productRentalPrice, productWeight, cart_product_quantity from cart, product where product_id = idProduct and user_id = " + idUser);
        List<Cart> list = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    Cart c = new Cart();
                    c.setIdProduct(rs.getInt("idProduct"));
                    c.setProductName(rs.getString("productName"));
                    c.setImage(rs.getString("productUrlImage"));
                    c.setPrice(rs.getFloat("productRentalPrice"));
                    c.setCartProductWeight(rs.getInt("productWeight"));
                    System.out.println(c.getCartProductWeight());
                    c.setCartProductQuantity(rs.getInt("cart_product_quantity"));
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
                    System.out.println("Cap nhat thanh cong o db");
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
                        System.out.println("Them thanh cong o db");
                        return true;
                    } else {
                        System.out.println("user id o db: " + idUser);
                        System.out.println("product id o db: " + idProduct);
                        System.out.println("quantity o db: " + quantity);
                        System.out.println("Them that bai o db");
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
        System.out.println("so luong trong cart:" + GetProductQuantityFromCart(idUser, idProduct));
        System.out.println("so luong sau khi them:" + new_quantity);
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
                    System.out.println("cart_product_quantity" + quantity);
                }
                return quantity;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
