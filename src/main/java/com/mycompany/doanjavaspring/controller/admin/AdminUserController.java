/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.admin;

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
public class AdminUserController {
    DBUser dbq = new DBUser();
    @RequestMapping(value = "/admin/adminListUsers")
    public String adminListUsers(HttpSession session, @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        Admin a = (Admin) session.getAttribute("admin");
        admin.setId(a.getId());
        admin.setUsername(a.getUsername());
        admin.setPassword(a.getPassword());
        admin.setRole(a.getRole());
        session.setAttribute("admin", admin);
        return "admin/adminListUsers";
    }
    @RequestMapping(value = "/admin/adminDetailsUser")
    public String adminDetailsUser(HttpSession session, @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        Admin a = (Admin) session.getAttribute("admin");
        admin.setId(a.getId());
        admin.setUsername(a.getUsername());
        admin.setPassword(a.getPassword());
        admin.setRole(a.getRole());
        session.setAttribute("admin", admin);
        return "admin/adminDetailsUser";
    }
}
