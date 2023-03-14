/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.admin;

import com.mycompany.database.DBQuery;
import com.mycompany.model.Admin;
import com.mycompany.model.User;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author truongthanh
 */
@Controller
public class AdminProductController {

    DBQuery dbq = new DBQuery();

    @RequestMapping(value = "/admin/adminIndex")
    public String adminIndex(HttpSession session, @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        Admin a = (Admin) session.getAttribute("admin");
        admin.setId(a.getId());
        admin.setUsername(a.getUsername());
        admin.setPassword(a.getPassword());
        admin.setRole(a.getRole());
        session.setAttribute("admin", admin);
        return "/admin/adminIndex";
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

}
