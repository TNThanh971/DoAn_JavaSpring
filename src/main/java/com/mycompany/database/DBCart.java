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
        ResultSet rs = db.Query("select productName, productUrlImage, productRentalPrice, cart_product_quantity from cart, product where product_id = idProduct and user_id = " + idUser);
        List<Cart> list = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    Cart c = new Cart();
                    c.setProductName(rs.getString("productName"));
                    c.setImage(rs.getString("productUrlImage"));
                    c.setPrice(rs.getFloat("productRentalPrice"));
                    c.setCartProductQuantity(rs.getInt("cart_product_quantity"));
                    System.out.println(c.getProductName());
                    System.out.println(c.getImage());
                    System.out.println(c.getPrice());
                    System.out.println(c.getCartProductQuantity());
                    System.out.println("user id: " + idUser);
                    list.add(c);
                }
            } catch (SQLException ex) {
                System.out.println("error: " + ex.toString());
            }
        }
        return list;
    }

    // add products to cart
    public int AddProductToCart(String idUser, String idProduct, int quantity) {
        String[] params = new String[]{idUser, idProduct, Integer.toString(quantity)};
        ResultSet rs = db.Query("insert into cart(user_id, product_id, cart_product_quantity) values(?,?,?)", params);
        if (rs != null) {
            return 1;
        }
        return 0;
    }

    // delete products from cart
    public int DelProductToCart(String idUser, String idProduct) {
        String[] params = new String[]{idUser, idProduct};
        ResultSet rs = db.Query("DELETE FROM cart WHERE user_id=? and product_id =?", params);
        if (rs != null) {
            return 1;
        }
        return 0;
    }

    // delete products from cart
    public int UpdateProductToCart(String idUser, String idProduct, int quantity) {
        String[] params = new String[]{Integer.toString(quantity), idUser, idProduct};
        ResultSet rs = db.Query("UPDATE cart SET cart_product_quantity=? WHERE user_id=? and product_id =?", params);
        if (rs != null) {
            return 1;
        }
        return 0;
    }
    //end cart
}
