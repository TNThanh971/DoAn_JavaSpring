/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.model.Invoice;
import com.mycompany.model.InvoiceDetail;
import java.sql.ResultSet;

/**
 *
 * @author truongthanh
 */
public class DBInvoice {
     DB db = new DB();
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
}
