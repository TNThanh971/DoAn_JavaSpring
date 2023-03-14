/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.admin;

import com.mycompany.config.Utils;
import com.mycompany.database.DB;
import com.mycompany.database.DBQuery;
import com.mycompany.model.Admin;
import com.mycompany.model.User;
import java.sql.SQLException;
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
public class AuthentificationAdminController {
    
    DBQuery dbq = new DBQuery();
    //sign in admin
    @RequestMapping(value = "/admin/adminLogin")
    public String adminLogin(Model model) {
        return "admin/adminLogin";
    }
    @RequestMapping(value = "/admin/adminLogin", method = RequestMethod.POST)
    public String adminLogin(HttpSession session, @RequestParam(required = false) String url, @ModelAttribute() Admin admin, Model model) throws SQLException {
        System.out.println(admin.getUsername()+"   "+admin.getPassword());
        if (dbq.AdminLogin(admin.getUsername(), admin.getPassword())== true) {
            session.setAttribute("admin", dbq.GetAdminByUsername(admin.getUsername()));
            if (url != null && !url.equals("")) {
                return "redirect:" + Utils.URLDecode(url);
            }
            return "redirect:/admin/adminIndex";
        }
        model.addAttribute("msg", "Tài khoản admin không chính xác!");
        return "/admin/adminLogin";
    }
    //end sign in admin
    @RequestMapping(value = "/admin/adminLogout")
    public String Logout(HttpSession session) {
        session.removeAttribute("admin");
        return "redirect:/admin/adminLogin";
    }
}
