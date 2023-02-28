/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.config.Utils;
import com.mycompany.model.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author truongthanh
 */
public class DBQuery {

    DB db = new DB();

    public List<User> GetUser() {
        ResultSet rs = db.Query("select * from user");
        List<User> list = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    User f = new User();
                    list.add(f);
                }
            } catch (SQLException ex) {
                System.out.println("error: " + ex.toString());
            }
        }
        return list;
    }

    public boolean SignUpUser(User user) {
        System.err.println("name: "+ user.getFirstName());
        System.err.println("email: "+ user.getEmail());
        System.err.println("pass: "+ user.getPassword());
        System.out.println("encrypt: "+Utils.SHA1(user.getPassword()));
        String[] params = new String[]{user.getFirstName(), user.getEmail(), Utils.SHA1(user.getPassword())};
        if (GetUserByEmail(user.getEmail()) == null) {
            if (db.Update("insert into user(firstName, email, password) values (?, ?, ?)", params)> 0) {
                return true;
            }
        }
        return false;
    }

    public User GetUserByEmail(String email) {
        ResultSet rs = db.Query("SELECT * FROM user WHERE email = ?", new String[]{email});
        if (rs != null) {
            try {
                while (rs.next()) {
                    User u = new User();
                    u.setFirstName(rs.getString("firstName"));
                    u.setEmail(rs.getString("email"));
                    return u;
                }
            } catch (SQLException ex) {
            }
        }
        return null;
    }

    public User GetUserByAuthentication(User user) {
        if (user.getPassword() != null) {
            ResultSet rs = db.Query("SELECT * FROM user WHERE email = ? AND password = ?", new String[]{user.getEmail(), Utils.SHA1(user.getPassword())});
            if (rs != null) {
                try {
                    while (rs.next()) {
                        User u = new User();
                        u.setPassword(rs.getString("password"));
                        u.setEmail(rs.getString("email"));
                        return u;
                    }
                } catch (SQLException ex) {
                }
            }
        }
        return null;
    }
}
