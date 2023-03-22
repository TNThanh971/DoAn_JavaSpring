/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.model.InvoiceType;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author truongthanh
 */
public class DBInvoiceType {
    DB db = new DB();
    //begin get product type
    public InvoiceType GetIdTypeByTypeName(String typeName) {
        ResultSet rs = db.Query("SELECT * FROM invoice_status WHERE invoice_status_name = ?", new String[]{typeName});
        if (rs != null) {
            try {
                while (rs.next()) {
                    InvoiceType pt = new InvoiceType();
                    pt.setInvoiceStatusId(rs.getInt("invoice_status_id "));
                    pt.setInvoiceStatusName(rs.getString("invoice_status_name"));
                    return pt;
                }
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return null;
    }

    public InvoiceType GetTypeNameByIdType(String idType) {
        ResultSet rs = db.Query("SELECT * FROM invoice_status WHERE invoice_status_id = ?", new String[]{idType});
        if (rs != null) {
            try {
                while (rs.next()) {
                    InvoiceType pt = new InvoiceType();
                    pt.setInvoiceStatusId(rs.getInt("invoice_status_id"));
                    pt.setInvoiceStatusName(rs.getString("invoice_status_name"));
                    return pt;
                }
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return null;
    }

    public List<InvoiceType> GetInvoiceTypeList() {
        ResultSet rs = db.Query("select * from invoice_status");
        List<InvoiceType> lst = new ArrayList<InvoiceType>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    InvoiceType pt = new InvoiceType();
                    pt.setInvoiceStatusId(rs.getInt("invoice_status_id"));
                    pt.setInvoiceStatusName(rs.getString("invoice_status_name"));
                    lst.add(pt);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return lst;
    }
}
