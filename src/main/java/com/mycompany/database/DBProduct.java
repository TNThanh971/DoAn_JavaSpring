/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.database;

import com.mycompany.config.Utils;
import com.mycompany.model.Cart;
import com.mycompany.model.Product;
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
        ResultSet rs = db.Query("select * from product where productQuantity>0" + Utils.Offset(page));
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

    public List<Product> GetProductListAdmin(int page) {
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
    public List<Product> GetProductListUser(int page) {
        ResultSet rs = db.Query("select * from product where productQuantity>0 " + Utils.Offset(page));
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
    public List<Product> SearchProductList(String keyword) {
        ResultSet rs = db.Query("select * from product WHERE MATCH(productName) AGAINST('" + keyword + "')");
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
                    System.out.println(p.getProductName());
                    lst.add(p);
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return lst;
    }

    public List<Product> GetProductListByType(int page, String name) {
        ResultSet rs = db.Query("select * from product as p left outer join product_type as t on p.idProductType = t.idProductType where t.typeName = ? and productQuantity>0"
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
        String[] updateParams = new String[]{
            product.getProductName(),
            Integer.toString(product.getProductQuantity()),
            product.getProductUrlImage(),
            product.getProductSize(),
            Float.toString(product.getProductRentalPrice()),
            product.getProductDescription(),
            Float.toString(product.getProductPrice()),
            Float.toString(product.getProductWeight()),
            Integer.toString(product.getIdProduct())};
        try {
            if (GetProductByIdProduct(product.getIdProduct()) == null) {
                if (db.Query("insert into product"
                        + "(productName, productQuantity, productUrlImage, idProductType, productSize, productRentalPrice, productDescription, productPrice, productWeight) "
                        + "values(?,?,?,?,?,?,?,?)", params) != null) {
                    //System.out.println("Product ID 1: " + product.getIdProduct());
                    System.out.println("create successfully");
                    return true;
                }
            } else {
                if (db.Update("update product set productName=?,productQuantity=?, productUrlImage=?, productSize=?, productRentalPrice=?, productDescription=?,productPrice=?,productWeight=? where idProduct = ?", updateParams) > 0) {
                    System.out.println("update successfully");
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
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
                    p.setProductSize(rs.getString("productSize"));
                    p.setProductWeight(rs.getFloat("productWeight"));
                    return p;
                }
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return null;
    }

    public int getCountProductsAdmin() {
        ResultSet rs = db.Query("SELECT COUNT(idProduct) AS total FROM product");
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

    public int getCountProducts() {
        ResultSet rs = db.Query("SELECT COUNT(idProduct) AS total FROM product where productQuantity>0");
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

    public int getCountProductsById1() {
        ResultSet rs = db.Query("SELECT COUNT(idProduct) AS total FROM product where idProductType = " + 1 + " and productQuantity>0");
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

    public int getCountProductsById2() {
        ResultSet rs = db.Query("SELECT COUNT(idProduct) AS total FROM product where idProductType = " + 2 + " and productQuantity>0");
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

    public int getCountProductsById3() {
        ResultSet rs = db.Query("SELECT COUNT(idProduct) AS total FROM product where idProductType = " + 3 + " and productQuantity>0");
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

    // update quantity after purchase
    public boolean updateProductAfterPurchase(Cart product, String quantity) {
        Product p = GetProductByIdProduct(product.getIdProduct());
        int new_quantity = p.getProductQuantity() - Integer.parseInt(quantity);
        String[] updateParams = new String[]{
            Integer.toString(new_quantity),
            Integer.toString(product.getIdProduct())
        };
        try {
            if (GetProductByIdProduct(product.getIdProduct()) == null) {
                System.out.println("product does not exist");
            } else {
                if (db.Update("update product set productQuantity=? where idProduct = ?", updateParams) > 0) {
                    System.out.println("update product quantity successfully");
                    return true;
                }
                else{
                    System.out.println("update product quantity unsuccessfully");
                    return false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean updateProductAfterCancelingInvoice(Cart product, String quantity) {
        Product p = GetProductByIdProduct(product.getIdProduct());
        int new_quantity = p.getProductQuantity() + Integer.parseInt(quantity);
        String[] updateParams = new String[]{
            Integer.toString(new_quantity),
            Integer.toString(product.getIdProduct())
        };
        try {
            if (GetProductByIdProduct(product.getIdProduct()) == null) {
                System.out.println("product does not exist");
            } else {
                if (db.Update("update product set productQuantity=? where idProduct = ?", updateParams) > 0) {
                    System.out.println("update product quantity successfully");
                    return true;
                }
                else{
                    System.out.println("update product quantity unsuccessfully");
                    return false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public List<Product> GetProductListAscByPrice(int page) {
        ResultSet rs = db.Query("select * from product where productQuantity>0" + Utils.Offset(page));
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
    public List<Product> GetProductListDescByPrice(int page) {
        ResultSet rs = db.Query("select * from product where productQuantity>0" + Utils.Offset(page));
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
}
