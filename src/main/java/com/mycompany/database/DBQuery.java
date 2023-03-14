/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.config.Utils;
import com.mycompany.model.Admin;
import com.mycompany.model.Cart;
import com.mycompany.model.Invoice;
import com.mycompany.model.InvoiceDetail;
import com.mycompany.model.Product;
import com.mycompany.model.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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

    public boolean Login(String email, String password) throws SQLException {
        System.out.println(password);
        password = Utils.SHA1(password);
        System.out.println(password);
        ResultSet ls = db.Query("SELECT * FROM user WHERE email = ? AND password = ?", new String[]{email, password});
        if (ls != null) {
            while (ls.next()) {
                System.out.println(ls.getString("email"));
                System.out.println(ls.getString("password"));
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

    // begin product
    public List<Product> GetProductList(int page) {
        ResultSet rs = db.Query("select * from product " + Utils.Offset(page));
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
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return lst;
    }

    public List<Product> GetProductListByType(int page, String name) {
        ResultSet rs = db.Query("select * from product as p left outer join product_type as t on p.idProductType = t.idProductType where t.typeName = ?"
                + Utils.Offset(page), new String[]{name});
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
                }
            } catch (Exception e) {
                System.out.println(e);
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

        if (GetProductByIdProduct(product.getIdProduct()) == null) {
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

    public Product GetProductByIdProduct(int idProduct) {
        ResultSet rs = db.Query("SELECT * FROM product WHERE idProduct = " + idProduct);
        if (rs != null) {
            try {
                while (rs.next()) {
                    Product p = new Product();
                    p.setIdProduct(rs.getInt("idProduct"));
                    p.setProductDescription(rs.getString("productDescription"));
                    p.setProductQuantity(rs.getInt("productQuantity"));
                    p.setProductName(rs.getString("productName"));
                    p.setProductUrlImage(rs.getString("productUrlImage"));
                    p.setProductRentalPrice(rs.getFloat("productRentalPrice"));
                    p.setProductPrice(rs.getFloat("productPrice"));
                    p.setProductWeight(rs.getFloat("productWeight"));
                    return p;
                }
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return null;
    }

    public int getCountProducts() {
        ResultSet rs = db.Query("SELECT COUNT(id) AS total FROM product");
        if (rs != null) {
            try {
                while (rs.next()) {
                    return rs.getInt("total");
                }
            } catch (SQLException ex) {
                System.out.println("error get count product: " + ex.toString());
            }
        }
        return 0;
    }

    //end products
    //begin invoice
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
    //end invoice

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
                System.out.println("Query: ");
                System.out.println(ls.getString("username"));
                System.out.println(ls.getString("password"));
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
