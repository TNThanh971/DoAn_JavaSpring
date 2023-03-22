/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.model;

/**
 *
 * @author truongthanh
 */
public class Invoice {

    private int idInvoice;
    private float totalPrice;
    private int idInvoiceStatus;
    private int idUser;
    private String userFullName;
    private String phoneNumber;
    private String userAddress;
    private String invoiceNote;
    private String invoiceNoteAdmin;
    private int invoiceFeeTransport;
    private int invoiceFeePond;
    private int amountOfDay;
    private String email;
    private String note;
    private String createAt;

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getIdInvoice() {
        return idInvoice;
    }

    public void setIdInvoice(int idInvoice) {
        this.idInvoice = idInvoice;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getIdInvoiceStatus() {
        return idInvoiceStatus;
    }

    public void setIdInvoiceStatus(int idInvoiceStatus) {
        this.idInvoiceStatus = idInvoiceStatus;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getUserFullName() {
        return userFullName;
    }

    public void setUserFullName(String userFullName) {
        this.userFullName = userFullName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getInvoiceNote() {
        return invoiceNote;
    }

    public void setInvoiceNote(String invoiceNote) {
        this.invoiceNote = invoiceNote;
    }

    public String getInvoiceNoteAdmin() {
        return invoiceNoteAdmin;
    }

    public void setInvoiceNoteAdmin(String invoiceNoteAdmin) {
        this.invoiceNoteAdmin = invoiceNoteAdmin;
    }

    public int getInvoiceFeeTransport() {
        return invoiceFeeTransport;
    }

    public void setInvoiceFeeTransport(int invoiceFeeTransport) {
        this.invoiceFeeTransport = invoiceFeeTransport;
    }

    public int getInvoiceFeePond() {
        return invoiceFeePond;
    }

    public void setInvoiceFeePond(int invoiceFeePond) {
        this.invoiceFeePond = invoiceFeePond;
    }

    public int getAmountOfDay() {
        return amountOfDay;
    }

    public void setAmountOfDay(int amountOfDay) {
        this.amountOfDay = amountOfDay;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
