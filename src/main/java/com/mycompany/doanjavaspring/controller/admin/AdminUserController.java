/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.admin;

import com.mycompany.config.Utils;
import com.mycompany.database.DBInvoice;
import com.mycompany.database.DBUser;
import com.mycompany.model.Admin;
import com.mycompany.model.User;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author truongthanh
 */
@Controller
public class AdminUserController {

    DBUser dbq = new DBUser();
    DBInvoice dbqInvoice = new DBInvoice();

    @RequestMapping(value = "/admin/adminListUsers")
    public String adminListUsers(HttpSession session, @RequestParam(required = false) String page, @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        int page_id = Utils.Page(page);
        List<User> adminUser;
        if (dbq.GetUser(page_id) != null) {
            adminUser = dbq.GetUser(page_id);
            model.addAttribute("adminUserLists", adminUser);
        } else {
            System.out.println("failed");
        }
        return "admin/adminListUsers";
    }

    @RequestMapping(value = "/admin/adminUserDetail")
    public String adminDetailsUser(HttpSession session, @ModelAttribute() Admin admin, @RequestParam(required = false) String idUser, Model model) throws SQLException {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        User f = dbq.GetUserById(idUser);

        try {
            if (f == null) {
                return "redirect:/admin/adminListUsers";
            } else {
                int invoiceCount = dbqInvoice.getInvoiceCountByIdUser(idUser);
                if (invoiceCount != -1) {
                    model.addAttribute("invoiceTotalCountByIdUser", invoiceCount);
                }
                int invoiceCancelCount = dbqInvoice.getInvoiceCancelCountByIdUser(idUser);
                if (invoiceCancelCount != -1) {
                    model.addAttribute("invoiceCancelCountByIdUser", invoiceCancelCount);
                }
                model.addAttribute("userDetail", f);
                return "admin/adminUserDetail";
            }

        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return "redirect:/admin/adminListUsers";
        }
    }
}
