/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.admin;

import com.mycompany.database.DBInvoice;
import com.mycompany.database.DBProduct;
import com.mycompany.database.DBUser;
import com.mycompany.model.Admin;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author truongthanh
 */
@Controller
public class AdminIndexController {
    DBUser dbqUser= new DBUser();
    DBInvoice dbqInvoice = new DBInvoice();
    DBProduct dbqProduct = new DBProduct();
    
    @RequestMapping(value = "/admin/adminIndex")
    public String adminIndex(HttpSession session, @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        // tong doanh thu 
        int totalInvoiceRevenue = dbqInvoice.getInvoiceRevenue();
        model.addAttribute("totalInvoiceRevenue", totalInvoiceRevenue);
        // tong khach hang  
        int totalUser = dbqUser.getCountUsers();
        model.addAttribute("totalUser", totalUser);
        // tong don hang
        int totalInvoice = dbqInvoice.getCountInvoice();
        model.addAttribute("totalInvoice", totalInvoice);
        // tong so san pham
        int totalProduct = dbqProduct.getCountProductsAdmin();
        model.addAttribute("totalProduct", totalProduct);
        return "/admin/adminIndex";
    }
}
