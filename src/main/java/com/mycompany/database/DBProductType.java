/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.model.ProductType;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author truongthanh
 */
public class DBProductType {
    DB db = new DB();
    //begin get product type
    public ProductType GetIdTypeByTypeName(String typeName) {
        ResultSet rs = db.Query("SELECT * FROM product_type WHERE typeName = ?", new String[]{typeName});
        if (rs != null) {
            try {
                while (rs.next()) {
                    ProductType pt = new ProductType();
                    pt.setIdType(rs.getInt("idProductType"));
                    pt.setTypeName(rs.getString("typeName"));
                    return pt;
                }
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return null;
    }

    public ProductType GetTypeNameByIdType(String idType) {
        ResultSet rs = db.Query("SELECT * FROM product_type WHERE idProductType = ?", new String[]{idType});
        if (rs != null) {
            try {
                while (rs.next()) {
                    ProductType pt = new ProductType();
                    pt.setIdType(rs.getInt("idProductType"));
                    pt.setTypeName(rs.getString("typeName"));
                    return pt;
                }
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return null;
    }

    public List<ProductType> GetProductTypeList() {
        ResultSet rs = db.Query("select * from product_type");
        List<ProductType> lst = new ArrayList<ProductType>();
        if (rs != null) {
            try {
                while (rs.next()) {
                    ProductType pt = new ProductType();
                    pt.setIdType(rs.getInt("idProductType"));
                    pt.setTypeName(rs.getString("typeName"));
                    System.out.println(pt.getIdType());
                    System.out.println(pt.getTypeName());
                    
                    lst.add(pt);
                }
                System.out.println("insert dropdown list from db successfully");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return lst;
    }

    //end get product type
}
