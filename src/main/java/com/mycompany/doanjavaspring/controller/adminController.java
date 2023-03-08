/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author truongthanh
 */
@Controller
public class adminController {
   @RequestMapping(value = "/adminIndex")
    public String adminIndex(Model model) {
        return "adminIndex";
    } 
    @RequestMapping(value = "/adminAddProduct")
    public String adminAddProduct(Model model) {
        return "adminAddProduct";
    } 
    @RequestMapping(value = "/adminDetailsInvoices")
    public String adminDetailsInvoices(Model model) {
        return "adminDetailsInvoices";
    } 
    @RequestMapping(value = "/adminDetailsUser")
    public String adminDetailsUser(Model model) {
        return "adminDetailsUser";
    } 
    @RequestMapping(value = "/adminListInvoices")
    public String adminListInvoices(Model model) {
        return "adminListInvoices";
    } 
    @RequestMapping(value = "/adminListProduct")
    public String adminListProduct(Model model) {
        return "adminListProduct";
    } 
    @RequestMapping(value = "/adminListUsers")
    public String adminListUsers(Model model) {
        return "adminListUsers";
    } 
    @RequestMapping(value = "/adminLogin")
    public String adminLogin(Model model) {
        return "adminLogin";
    } 
}
