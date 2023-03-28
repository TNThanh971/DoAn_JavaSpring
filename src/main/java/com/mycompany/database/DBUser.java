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
public class DBUser {

    DB db = new DB();

    public List<User> GetUser(int page) {
        ResultSet rs = db.Query("select * from user" + Utils.Offset(page));
        List<User> list = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    User f = new User();
                    f.setIdUser(rs.getInt("idUser"));
                    f.setFirstName(rs.getString("firstName"));
                    f.setEmail(rs.getString("email"));
                    f.setPassword(rs.getString("password"));
                    f.setPhoneNumber(rs.getString("phoneNumber"));
                    f.setAddress(rs.getString("address"));
                    f.setBankAccountNumber(rs.getString("bankAccountNumber"));
                    f.setBankName(rs.getString("bankName"));
                    f.setCreateAt(rs.getString("user_created_at"));
                    list.add(f);
                }
            } catch (SQLException ex) {
                System.out.println("error: " + ex.toString());
            }
        }
        return list;
    }
    public List<User> SearchUser(String phoneNumber) {
        ResultSet rs = db.Query("select * from user where phoneNumber like " + phoneNumber );
        List<User> list = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    User f = new User();
                    f.setIdUser(rs.getInt("idUser"));
                    f.setFirstName(rs.getString("firstName"));
                    f.setEmail(rs.getString("email"));
                    f.setPassword(rs.getString("password"));
                    f.setPhoneNumber(rs.getString("phoneNumber"));
                    f.setAddress(rs.getString("address"));
                    f.setBankAccountNumber(rs.getString("bankAccountNumber"));
                    f.setBankName(rs.getString("bankName"));
                    f.setCreateAt(rs.getString("user_created_at"));
                    list.add(f);
                }
            } catch (SQLException ex) {
                System.out.println("error: " + ex.toString());
            }
        }
        return list;
    }

    public boolean Login(String email, String password) throws SQLException {
        password = Utils.SHA1(password);
        ResultSet ls = db.Query("SELECT * FROM user WHERE email = ? AND password = ?", new String[]{email, password});
        if (ls != null) {
            while (ls.next()) {
                return true;
            }
        }
        return false;
    }

    public int SignUpUser(User user) {
        String[] params = new String[]{user.getFirstName(), user.getEmail(), Utils.SHA1(user.getPassword())};
        if (GetUserByEmail(user.getEmail()) == null) {
            if (db.Update("insert into user(firstName, email, password) values (?, ?, ?)", params) > 0) {
                return 1;
            } else {
                return -1;
            }
        }
        return 0;
    }

    public User GetUserByEmail(String email) {
        ResultSet rs = db.Query("SELECT * FROM user WHERE email = ?", new String[]{email});
        if (rs != null) {
            try {
                while (rs.next()) {
                    User u = new User();
                    u.setIdUser(rs.getInt("idUser"));
                    u.setFirstName(rs.getString("firstName"));
                    u.setEmail(rs.getString("email"));
                    u.setAddress(rs.getString("address"));
                    u.setPhoneNumber(rs.getString("phoneNumber"));
                    u.setBankAccountNumber(rs.getString("bankAccountNumber"));
                    u.setBankName(rs.getString("bankName"));
                    u.setPassword(rs.getString("password"));
                    return u;
                }
            } catch (SQLException ex) {
            }
        }
        return null;
    }
    
     public User GetUserById(String idUser) {
        ResultSet rs = db.Query("SELECT * FROM user WHERE idUser  = ?", new String[]{idUser});
        if (rs != null) {
            try {
                while (rs.next()) {
                    User u = new User();
                    u.setIdUser(rs.getInt("idUser"));
                    u.setFirstName(rs.getString("firstName"));
                    u.setEmail(rs.getString("email"));
                    u.setAddress(rs.getString("address"));
                    u.setPhoneNumber(rs.getString("phoneNumber"));
                    u.setBankAccountNumber(rs.getString("bankAccountNumber"));
                    u.setBankName(rs.getString("bankName"));
                    u.setPassword(rs.getString("password"));
                    return u;
                }
            } catch (SQLException ex) {
            }
        }
        return null;
    }

    public boolean UpdateUserInfor(User user) {
        String[] params = new String[]{user.getFirstName(), user.getPhoneNumber(), user.getAddress(), user.getBankAccountNumber(), user.getBankName(), String.valueOf(user.getIdUser())};
        return db.Update("UPDATE user SET firstName = ?, phoneNumber = ?, address = ?, bankAccountNumber = ?, bankName = ? WHERE idUser = ?", params) > 0;
    }

    public boolean UpdateUserPassword(String pass, User user) {
        String[] params = new String[]{Utils.SHA1(pass), String.valueOf(user.getIdUser())};
        return db.Update("UPDATE user SET  password = ? WHERE idUser = ?", params) > 0;
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
