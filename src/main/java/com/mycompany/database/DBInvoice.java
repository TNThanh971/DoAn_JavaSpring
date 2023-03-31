/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.config.Utils;
import com.mycompany.model.Cart;
import com.mycompany.model.Invoice;
import com.mycompany.model.InvoiceDetail;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author truongthanh
 */
public class DBInvoice {

    DB db = new DB();

    //begin invoice
    public List<Invoice> GetInvoiceByEmail(String email) {
        ResultSet rs = db.Query("select * from invoice where invoiceUserEmail=?", new String[]{email});
        List<Invoice> lst = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    Invoice p = new Invoice();
                    p.setIdInvoice(rs.getInt("idInvoice"));
                    p.setIdUser(rs.getInt("idUser"));
                    p.setUserFullName(rs.getString("invoiceUserFullName"));
                    p.setPhoneNumber(rs.getString("invoiceUserPhoneNumber"));
                    p.setEmail(rs.getString("invoiceUserEmail"));
                    p.setUserAddress(rs.getString("invoiceUserAddress"));
                    p.setAmountOfDay(rs.getInt("invoiceNumRentalDays"));
                    p.setNote(rs.getString("invoiceNote"));
                    p.setInvoiceNoteAdmin(rs.getString("invoiceNoteAdmin"));
                    p.setTotalPrice(rs.getFloat("invoiceTotal"));
                    p.setInvoiceFeeTransport(rs.getInt("invoiceFeeTransport"));
                    p.setInvoiceFeePond(rs.getInt("invoiceFeePond"));
                    p.setIdInvoiceStatus(rs.getInt("invoiceStatusId"));
                    p.setCreateAt(rs.getString("invoiceCreatedAt"));
                    lst.add(p);
                }
            } catch (Exception e) {
            }
        }
        return lst;
    }

    //insert Invoice
    public boolean InsertInvoice(Invoice invoice) {
        String[] params = new String[]{Float.toString(
            invoice.getIdUser()),
            invoice.getUserFullName(), invoice.getPhoneNumber(),
            invoice.getEmail(), invoice.getUserAddress(),
            Integer.toString(invoice.getAmountOfDay()), invoice.getInvoiceNote(),
            Float.toString(invoice.getTotalPrice()),
            Integer.toString(invoice.getInvoiceFeeTransport()),
            Integer.toString(invoice.getInvoiceFeePond()),
            Integer.toString(invoice.getIdInvoiceStatus()),
            Utils.StrDate()};
        System.out.println(params);
        if (db.Update("insert into invoice(idUser ,invoiceUserFullName, "
                + "invoiceUserPhoneNumber, invoiceUserEmail, invoiceUserAddress,"
                + "invoiceNumRentalDays, invoiceNote, invoiceTotal, invoiceFeeTransport, "
                + "invoiceFeePond, invoiceStatusId, invoiceCreatedAt) "
                + "values(?,?,?,?,?,?,?,?,?,?,?,?)", params) > 0) {
            return true;
        }

        return false;
    }

    //get invoice by its id
    public Invoice GetInvoiceByIdInvoice(String idInvoice) {
        ResultSet rs = db.Query("select * from invoice where idInvoice=?", new String[]{idInvoice});
        if (rs != null) {
            try {
                while (rs.next()) {
                    Invoice p = new Invoice();
                    p.setIdInvoice(rs.getInt("idInvoice"));
                    p.setIdUser(rs.getInt("idUser"));
                    p.setUserFullName(rs.getString("invoiceUserFullName"));
                    p.setPhoneNumber(rs.getString("invoiceUserPhoneNumber"));
                    p.setEmail(rs.getString("invoiceUserEmail"));
                    p.setUserAddress(rs.getString("invoiceUserAddress"));
                    p.setAmountOfDay(rs.getInt("invoiceNumRentalDays"));
                    p.setNote(rs.getString("invoiceNote"));
                    p.setInvoiceNoteAdmin(rs.getString("invoiceNoteAdmin"));
                    p.setTotalPrice(rs.getFloat("invoiceTotal"));
                    p.setInvoiceFeeTransport(rs.getInt("invoiceFeeTransport"));
                    p.setInvoiceFeePond(rs.getInt("invoiceFeePond"));
                    p.setIdInvoiceStatus(rs.getInt("invoiceStatusId"));
                    p.setCreateAt(rs.getString("invoiceCreatedAt"));
                    return p;
                }
            } catch (Exception e) {
            }
        }
        return null;
    }
    // begin product
    public List<Invoice> GetInvoiceList(int page) {
        ResultSet rs = db.Query("select * from invoice " + Utils.Offset(page));
        List<Invoice> lst = new ArrayList<Invoice>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    Invoice p = new Invoice();
                    p.setIdInvoice(rs.getInt("idInvoice"));
                    p.setIdUser(rs.getInt("idUser"));
                    p.setUserFullName(rs.getString("invoiceUserFullName"));
                    p.setPhoneNumber(rs.getString("invoiceUserPhoneNumber"));
                    p.setEmail(rs.getString("invoiceUserEmail"));
                    p.setUserAddress(rs.getString("invoiceUserAddress"));
                    p.setAmountOfDay(rs.getInt("invoiceNumRentalDays"));
                    p.setNote(rs.getString("invoiceNote"));
                    p.setInvoiceNoteAdmin(rs.getString("invoiceNoteAdmin"));
                    p.setTotalPrice(rs.getFloat("invoiceTotal"));
                    p.setInvoiceFeeTransport(rs.getInt("invoiceFeeTransport"));
                    p.setInvoiceFeePond(rs.getInt("invoiceFeePond"));
                    p.setIdInvoiceStatus(rs.getInt("invoiceStatusId"));
                    p.setCreateAt(rs.getString("invoiceCreatedAt"));
                    lst.add(p);
                }
                return lst;
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return null;
    }

    public Invoice SearchInvoiceByIdInvoice(String idInvoice) {
        ResultSet rs = db.Query("select * from invoice where idInvoice= " + idInvoice);
        if (rs != null) {
            try {
                while (rs.next()) {
                    Invoice p = new Invoice();
                    p.setIdInvoice(rs.getInt("idInvoice"));
                    p.setIdUser(rs.getInt("idUser"));
                    p.setUserFullName(rs.getString("invoiceUserFullName"));
                    p.setPhoneNumber(rs.getString("invoiceUserPhoneNumber"));
                    p.setEmail(rs.getString("invoiceUserEmail"));
                    p.setUserAddress(rs.getString("invoiceUserAddress"));
                    p.setAmountOfDay(rs.getInt("invoiceNumRentalDays"));
                    p.setNote(rs.getString("invoiceNote"));
                    p.setInvoiceNoteAdmin(rs.getString("invoiceNoteAdmin"));
                    p.setTotalPrice(rs.getFloat("invoiceTotal"));
                    p.setInvoiceFeeTransport(rs.getInt("invoiceFeeTransport"));
                    p.setInvoiceFeePond(rs.getInt("invoiceFeePond"));
                    p.setIdInvoiceStatus(rs.getInt("invoiceStatusId"));
                    p.setCreateAt(rs.getString("invoiceCreatedAt"));
                    System.out.println(p.getAmountOfDay());
                    return p;
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return null;
    }

    //end invoice
    // get count
    public int getInvoiceCountByIdUser(String idUser) throws SQLException {
        ResultSet ls = db.Query("SELECT idUser FROM invoice where idUser = " + idUser);
        try {
            int count = 0;
            if (ls != null) {
                while (ls.next()) {
                    count++;
                }
            }
            return count;

        } catch (NumberFormatException ex) {
            System.out.println("error get count users: " + ex.toString());
        }
        return -1;
    }

    public int getInvoiceCancelCountByIdUser(String idUser) throws SQLException {
        ResultSet ls = db.Query("SELECT idUser FROM invoice WHERE invoiceStatusId =1 AND idUser = " + idUser);
        try {
            int count = 0;
            if (ls != null) {
                while (ls.next()) {
                    count++;
                }
            }
            return count;

        } catch (NumberFormatException ex) {
            System.out.println("error get count users: " + ex.toString());
        }
        return -1;
    }

    //end get count
    // starting invoice đetail
    public List<InvoiceDetail> getListProductDetailByIdInvoice(String idInvoice) {
        ResultSet rs = db.Query("select id.*, p.* from invoice_detail as id, product as p where invoice_id=? and product_id = idProduct ", new String[]{idInvoice});
        List<InvoiceDetail> lst = new ArrayList<>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    InvoiceDetail id = new InvoiceDetail();
                    id.setIdProduct(rs.getInt("product_id"));
                    id.setQuantity(rs.getInt("invd_product_quantity"));
                    id.setIdInvoice(rs.getInt("invoice_id"));
                    id.setProductRentalPrice(rs.getFloat("invd_product_rental_price"));
                    id.setProductName(rs.getString("productName"));
                    id.setProductPrice(rs.getFloat("productPrice"));
                    id.setImage(rs.getString("productUrlImage"));
                    lst.add(id);
//                    System.out.println(id.getIdProduct());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return lst;
    }

    public int getCountInvoice() {
        ResultSet rs = db.Query("SELECT COUNT(idInvoice) AS total FROM invoice");
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
    //update invoice status 

    public boolean updateInvoiceStatus(String idStatus, String idInvoice) {
        if (db.Update("update invoice set invoiceStatusId =? where idInvoice=? ",
                new String[]{idStatus, idInvoice}) > 0) {
            System.out.println("succeed in posting params");
            return true;
        }
        return false;
    }
    //end update invoice status 

    //get latest invoice
    public int getLatestInvoiceId(String idUser) {
        ResultSet rs = db.Query("SELECT MAX(idInvoice) as biggest FROM invoice where idUser=" + idUser);
        int max = 0;
        try {
            if (rs != null) {
                while (rs.next()) {
                    max = rs.getInt("biggest");
                }
            }
            return max;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
    //end getting latest invoice

    // creating invoice detail after inserting
    public boolean InsertInvoiceDetail(Cart cart, String idUser, String quantity) {
        System.out.println(cart.getIdProduct());
        System.out.println(quantity);
        System.out.println(cart.getRentalPrice());
        try {
            String latestIdInvoiceString = Integer.toString(getLatestInvoiceId(idUser));
            System.out.println(latestIdInvoiceString);

            String[] params = new String[]{
                latestIdInvoiceString, Integer.toString(cart.getIdProduct()), quantity, Float.toString(cart.getRentalPrice())
            };

            if (db.Update("insert into invoice_detail(invoice_id  ,product_id , "
                    + "invd_product_quantity  , invd_product_rental_price) "
                    + "values(?,?,?,?)", params) > 0) {
                System.out.println("insert invoice detail successfully");
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    // end create invoice detail
}
