/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.config.Utils;
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
    public Invoice GetInvoiceByEmail(String email) {
        ResultSet rs = db.Query("select * from invoice where invoiceEmail=?", new String[]{email});
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
                    System.out.println(p.getIdInvoice());
                    System.out.println(p.getUserFullName());
                }
            } catch (Exception e) {
            }
        }
        return null;
    }

    public InvoiceDetail getInvoiceDetailByIdInvoice(String idInvoice) {
        ResultSet rs = db.Query("select * from invoice_detail where invoice_id=?", new String[]{idInvoice});
        if (rs != null) {
            try {
                while (rs.next()) {
                    InvoiceDetail id = new InvoiceDetail();
                    id.setIdProduct(rs.getInt("product_id"));
                    id.setQuantity(rs.getInt("invd_product_quantity"));
                    id.setIdInvoice(rs.getInt("invoice_id"));
                    id.setProductRentalPrice(rs.getFloat("invd_product_rental_price"));
                    return id;
                }
            } catch (Exception e) {
            }
        }
        return null;
    }
    //update Invoice
    public boolean InsertInvoice(Invoice invoice) {
        String[] params = new String[]{Float.toString(invoice.getIdUser()),
            invoice.getUserFullName(), invoice.getPhoneNumber(),
            invoice.getEmail(), invoice.getUserAddress(),
            Integer.toString(invoice.getAmountOfDay()), invoice.getInvoiceNote(),
            Float.toString(invoice.getTotalPrice()),
            Integer.toString(invoice.getInvoiceFeeTransport()),
            Integer.toString(invoice.getInvoiceFeePond()),
            Integer.toString(invoice.getIdInvoiceStatus()),
            Utils.StrDate()};

        if (db.Update("insert into invoice(idUser ,invoiceUserFullName, invoiceUserPhoneNumber, invoiceUserEmail, invoiceUserAddress,invoiceNumRentalDays, invoiceNote, invoiceTotal, invoiceFeeTransport, invoiceFeePond, invoiceStatusId, invoiceCreatedAt) "
                + "values(?,?,?,?,?,?,?,?,?,?,?,?,?)", params) > 0) {
            return true;
        }

        return false;
    }

    public Invoice GetInvoiceByIdInvoice(int idInvoice) {
        ResultSet rs = db.Query("select * from invoice where idInvoice=?", new String[]{Integer.toString(idInvoice)});
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
                    System.out.println(p.getIdInvoice());
                    System.out.println(p.getUserFullName());
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
                    System.out.println(p.getIdInvoice());
                    System.out.println(p.getUserFullName());
                    lst.add(p);
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return lst;
    }
    public List<Invoice> SearchInvoiceList(String idInvoice) {
        ResultSet rs = db.Query("select * from invoice where idInvoice= " +idInvoice);
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
                    System.out.println(p.getIdInvoice());
                    System.out.println(p.getUserFullName());
                    lst.add(p);
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return lst;
    }
    //end invoice
    public int getInvoiceCountByIdUser(String idUser) throws SQLException {
        ResultSet ls = db.Query("SELECT idUser FROM invoice where idUser = "+idUser);
        try {    
            int count =0;
            if (ls!=null){
                while (ls.next()){
                    count ++;
                }
            }
            return count;

        } catch (NumberFormatException ex) {
            System.out.println("error get count users: " + ex.toString());
        }
        return -1;
    }
    public int getInvoiceCancelCountByIdUser(String idUser) throws SQLException {
        ResultSet ls = db.Query("SELECT idUser FROM invoice WHERE invoiceStatusId =1 AND idUser = "+idUser);
        try {    
            int count =0;
            if (ls!=null){
                while (ls.next()){
                    count ++;
                }
            }
            return count;

        } catch (NumberFormatException ex) {
            System.out.println("error get count users: " + ex.toString());
        }
        return -1;
    }
}
