/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.model.Admin;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author truongthanh
 */
public class DBAdmin {
    DB db = new DB();
    // admin login
    public boolean AdminLogin(String username, String password) throws SQLException {
        ResultSet ls = db.Query("SELECT * FROM admin WHERE username = ? AND password = ?", new String[]{username, password});
        if (ls != null) {
            while (ls.next()) {
                Admin admin = new Admin();
                admin.setId(ls.getInt("id"));
                admin.setUsername(ls.getString("username"));
                admin.setPassword(ls.getString("password"));
                admin.setRole(ls.getString("role"));
                return true;
            }
        }
        return false;
    }

    public Admin GetAdminByUsername(String username) {
        ResultSet rs = db.Query("SELECT * FROM admin WHERE username = ?", new String[]{username});
        if (rs != null) {
            try {
                while (rs.next()) {
                    Admin a = new Admin();
                    a.setId(rs.getInt("id"));
                    a.setUsername(rs.getString("username"));
                    a.setPassword(rs.getString("password"));
                    a.setRole(rs.getString("role"));
                    return a;
                }
            } catch (SQLException ex) {
            }
        }
        return null;
    }
    // end admin login
}
