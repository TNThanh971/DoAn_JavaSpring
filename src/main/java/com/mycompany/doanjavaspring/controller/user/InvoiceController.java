/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author truongthanh
 */
@Controller
public class InvoiceController {
    @RequestMapping(value = "/invoiceDetail")
    public String invoiceDetail(HttpSession session, Model model,
            @RequestParam() String idInvoice) {
        if (session.getAttribute("user") == null) {
            return "redirect:/";
        }
        return "invoiceDetail";
    }
}
