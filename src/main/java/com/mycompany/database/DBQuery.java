/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.model.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import jdk.internal.org.jline.keymap.KeyMap;

/**
 *
 * @author truongthanh
 */
public class DBQuery {

    DB db = new DB();

    public List<User> GetUser() {
        ResultSet rs = db.Query("selet * from user");
        List<User> list = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    User f = new User();
                    list.add(f);
                }
            } catch (SQLException ex) {
                    System.out.println("error get films: " + ex.toString());
            }
        }
        return list;
    }
    public List<User> SignUpUser(){
        ResultSet rs = db.Query("insert into user (name, username, password) "
                + "values(?,?,?)");
        List<User> list = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    User f = new User();
                    f.setName(rs.getString("name"));
                    f.setPassword(rs.getString("password"));
                    f.setUsername(rs.getString("username"));
                    list.add(f);
                }
            } catch (SQLException ex) {
                    System.out.println("error: " + ex.toString());
            }
        }
        return list;
    }
}
