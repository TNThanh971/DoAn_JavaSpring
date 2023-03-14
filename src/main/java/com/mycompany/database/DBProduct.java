/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.config.Utils;
import com.mycompany.model.Product;
import com.mycompany.model.ProductType;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author truongthanh
 */
public class DBProduct {
    DB db = new DB();
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
        String[] params = new String[]{
            product.getProductName(),
            Integer.toString(product.getProductQuantity()),
            product.getProductUrlImage(),
            Integer.toString(product.getIdProductType()),
            product.getProductSize(),
            Float.toString(product.getProductRentalPrice()),
            product.getProductDescription(),
            Float.toString(product.getProductPrice()),
            Float.toString(product.getProductWeight())};

        if (GetProductByIdProduct(product.getIdProduct()) == null) {
            if (db.Update("insert into product"
                    + "(productName, productQuantity, productUrlImage, idProductType, productSize, productRentalPrice, productDescription, productPrice, productWeight) "
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
