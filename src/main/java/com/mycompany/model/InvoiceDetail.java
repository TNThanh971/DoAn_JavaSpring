/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.model;

/**
 *
 * @author truongthanh
 */
public class InvoiceDetail {

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIdInvoice() {
        return idInvoice;
    }

    public void setIdInvoice(int idInvoice) {
        this.idInvoice = idInvoice;
    }

    public float getProductRentalPrice() {
        return productRentalPrice;
    }

    public void setProductRentalPrice(float productRentalPrice) {
        this.productRentalPrice = productRentalPrice;
    }

    private int idProduct;
    private int quantity;
    private int idInvoice;
    private float productRentalPrice;
}
