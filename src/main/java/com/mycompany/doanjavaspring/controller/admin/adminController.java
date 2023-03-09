/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author truongthanh
 */
@Controller
public class adminController {
   @RequestMapping(value = "/admin/adminIndex")
    public String adminIndex(Model model) {
        return "admin/adminIndex";
    } 
    @RequestMapping(value = "/admin/adminAddProduct")
    public String adminAddProduct(Model model) {
        return "admin/adminAddProduct";
    } 
    @RequestMapping(value = "/admin/adminDetailsInvoices")
    public String adminDetailsInvoices(Model model) {
        return "admin/adminDetailsInvoices";
    } 
    @RequestMapping(value = "/admin/adminDetailsUser")
    public String adminDetailsUser(Model model) {
        return "admin/adminDetailsUser";
    } 
    @RequestMapping(value = "/admin/adminListInvoices")
    public String adminListInvoices(Model model) {
        return "admin/adminListInvoices";
    } 
    @RequestMapping(value = "/admin/adminListProduct")
    public String adminListProduct(Model model) {
        return "admin/adminListProduct";
    } 
    @RequestMapping(value = "/admin/adminListUsers")
    public String adminListUsers(Model model) {
        return "admin/adminListUsers";
    } 
    @RequestMapping(value = "/admin/adminLogin")
    public String adminLogin(Model model) {
        return "admin/adminLogin";
    } 
}
