/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.config.Utils;
import com.mycompany.model.Invoice;
import com.mycompany.model.InvoiceDetail;
import com.mycompany.model.Product;
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
        System.err.println("name: " + user.getFirstName());
        System.err.println("email: " + user.getEmail());
        System.err.println("pass: " + user.getPassword());
        System.out.println("encrypt: " + Utils.SHA1(user.getPassword()));
        String[] params = new String[]{user.getFirstName(), user.getEmail(), Utils.SHA1(user.getPassword())};
        if (GetUserByEmail(user.getEmail()) == null) {
            if (db.Update("insert into user(firstName, email, password) values (?, ?, ?)", params) > 0) {
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

    public List<Product> GetProductList() {
        ResultSet rs = db.Query("select * from product");
        List<Product> lst = new ArrayList<Product>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    Product p = new Product();
                    p.setIdProduct(rs.getInt("idProduct"));
                    p.setProductName(rs.getString("productName"));
                    p.setProductQuantity(rs.getInt("productQuantity"));
                    p.setProductUrlImage(rs.getString("productUrlImage"));
                    p.setIdProductType(rs.getInt("idProductType"));
                    p.setProductSize(rs.getString("productSize"));
                    p.setProductRentalPrice(rs.getFloat("productRentalPrice"));
                    p.setProductDescription(rs.getString("productDescription"));
                    p.setProductPrice(rs.getFloat("productPrice"));
                    p.setProductWeight(rs.getFloat("productWeight"));
                    lst.add(p);
                    System.out.println(p.getIdProduct());
                }
            } catch (Exception e) {
                System.err.println(e);
            }
        }
        return lst;
    }

    public boolean addProduct(Product product) {
        String[] params = new String[]{product.getProductName(),
            Integer.toString(product.getProductQuantity()),
            product.getProductUrlImage(), Integer.toString(product.getIdProduct()),
            product.getProductSize(), Float.toString(product.getProductRentalPrice()),
            product.getProductDescription(), Float.toString(product.getProductPrice()),
            Float.toString(product.getProductWeight())};

        if (GetUserByIdProduct(Integer.toString(product.getIdProduct())) == null) {
            if (db.Update("insert into product(productName,productQuantity, productUrlImage, idProductType, productSize,productRentalPrice, productDescription, productPrice, productWeight) "
                    + "values(?,?,?,?,?,?,?,?,?)", params) > 0) {
                return true;
            }
        } else {
            if (db.Query("update product set productName=?,productQuantity=?, productUrlImage=?,idProductType=?, productSize=?, productRentalPrice=?, productDescription=?,productPrice=?,productWeight=?", params) != null) {
                return true;
            }
        }

        return false;
    }

    public Product GetUserByIdProduct(String idProduct) {
        ResultSet rs = db.Query("SELECT * FROM user WHERE idProduct = ?", new String[]{idProduct});
        if (rs != null) {
            try {
                while (rs.next()) {
                    Product p = new Product();
                    p.setIdProduct(rs.getInt("idProduct"));
                    return p;
                }
            } catch (SQLException ex) {
            }
        }
        return null;
    }

    public Invoice GetInvoiceByEmail(String email) {
        ResultSet rs = db.Query("select * from invoice where email=?", new String[]{email});
        if (rs != null) {
            try {
                while (rs.next()) {
                    Invoice i = new Invoice();
                    i.setTotalPrice(rs.getFloat("totalPrice"));
                    i.setIdInvoiceStatus(rs.getInt("idInvoiceStatus"));
                    i.setDay(rs.getString("day"));
                    i.setIdUser(rs.getInt("idUser"));
                    i.setUserFullName(rs.getString("userFullName"));
                    i.setPhoneNumber(rs.getString("phoneNumber"));
                    i.setUserAddress(rs.getString("userAddress"));
                    i.setInvoiceNote(rs.getString("invoiceNote"));
                    i.setInvoiceNote_admin(rs.getString("invoiceNote_admin"));
                    i.setInvoiceFeeTransport(rs.getInt("invoiceFeeTransport"));
                    i.setInvoiceFeePond(rs.getInt("invoiceFeePond"));
                    i.setAmountOfDay(rs.getInt("amountOfDay"));
                    i.setEmail(rs.getString("email"));
                }
            } catch (Exception e) {
            }
        }
        return null;
    }

    public InvoiceDetail getInvoiceDetailByIdInvoice(String idInvoice) {
        ResultSet rs = db.Query("select * from invoice_detail where idInvoice=?", new String[]{idInvoice});
        if (rs != null) {
            try {
                while (rs.next()) {
                    InvoiceDetail id = new InvoiceDetail();
                    id.setIdProduct(rs.getInt("idProduct"));
                    id.setQuantity(rs.getInt("quantity"));
                    id.setIdInvoice(rs.getInt("idInvoice"));
                    id.setProductRentalPrice(rs.getFloat("productRentalPrice"));
                    return id;
                }
            } catch (Exception e) {
            }
        }
        return null;
    }

    public boolean InsertInvoice(Invoice invoice) {
        String[] params = new String[]{Float.toString(invoice.getTotalPrice()),
            Integer.toString(invoice.getIdInvoiceStatus()),
            invoice.getDay(), Integer.toString(invoice.getIdUser()),
            invoice.getUserFullName(), invoice.getPhoneNumber(),
            invoice.getUserAddress(), invoice.getInvoiceNote(),
            invoice.getInvoiceNote(), invoice.getInvoiceNote_admin(),
            Integer.toString(invoice.getInvoiceFeeTransport()),
            Integer.toString(invoice.getInvoiceFeePond()),
            Integer.toString(invoice.getAmountOfDay()),
            invoice.getEmail()};

        if (db.Update("insert into product(productName,productQuantity, productUrlImage, idProductType, productSize,productRentalPrice, productDescription, productPrice, productWeight) "
                + "values(?,?,?,?,?,?,?,?,?)", params) > 0) {
            return true;
        }

        return false;
    }
    public Invoice GetInvoiceByIdInvoice(int idInvoice) {
        ResultSet rs = db.Query("select * from invoice where idInvoice=?", new String[]{Integer.toString(idInvoice)});
        if (rs != null) {
            try {
                while (rs.next()) {
                    Invoice i = new Invoice();
                    i.setTotalPrice(rs.getFloat("totalPrice"));
                    i.setIdInvoiceStatus(rs.getInt("idInvoiceStatus"));
                    i.setDay(rs.getString("day"));
                    i.setIdUser(rs.getInt("idUser"));
                    i.setUserFullName(rs.getString("userFullName"));
                    i.setPhoneNumber(rs.getString("phoneNumber"));
                    i.setUserAddress(rs.getString("userAddress"));
                    i.setInvoiceNote(rs.getString("invoiceNote"));
                    i.setInvoiceNote_admin(rs.getString("invoiceNote_admin"));
                    i.setInvoiceFeeTransport(rs.getInt("invoiceFeeTransport"));
                    i.setInvoiceFeePond(rs.getInt("invoiceFeePond"));
                    i.setAmountOfDay(rs.getInt("amountOfDay"));
                    i.setEmail(rs.getString("email"));
                    return i;
                }
            } catch (Exception e) {
            }
        }
        return null;
    }
}
