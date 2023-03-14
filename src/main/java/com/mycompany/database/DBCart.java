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
    public List<Cart> GetCartByIdUser(String idUser) {
        System.out.println("user has an id : " + idUser);
        ResultSet rs = db.Query("select p.productName, p.productUrlImage, p.productRentalPrice,c.productQuantity from cart c, product p where c.idProduct = p.idProduct and idUser = " + idUser);
        List<Cart> list = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    Cart c = new Cart();
                    c.setProductName(rs.getString("productName"));
                    c.setImage(rs.getString("productUrlImage"));
                    c.setPrice(rs.getFloat("productRentalPrice"));
                    c.setCartProductQuantity(rs.getInt("productQuantity"));
                    System.out.println(c.getProductName());
                    System.out.println(c.getImage());
                    System.out.println(c.getPrice());
                    System.out.println(c.getCartProductQuantity());
                    list.add(c);
                }
            } catch (SQLException ex) {
                System.out.println("error: " + ex.toString());
            }
        }
        return list;
    }

    public int AddProductToCart(String idUser, String idProduct, int quantity) {
        String[] params = new String[]{idUser, idProduct, Integer.toString(quantity)};
        ResultSet rs = db.Query("insert into cart(idUser, idProduct, cartProductQuantity) values(?,?,?)", params);
        if (rs != null) {
            return 1;
        }
        return 0;
    }
    //end cart
}
