/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.database.DBInvoice;
import com.mycompany.database.DBInvoiceType;
import com.mycompany.database.DBUser;
import com.mycompany.model.Invoice;
import com.mycompany.model.InvoiceType;
import com.mycompany.model.User;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author truongthanh
 */
@Controller
public class UserController {
    DBUser dbq = new DBUser();
    DBInvoice dbqInvoice = new DBInvoice();
    DBInvoiceType dpit= new DBInvoiceType();
    
    @RequestMapping(value = "/profile")
    public String Profile(HttpSession session, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/";
        }
        User user = (User) session.getAttribute("user");
        List<Invoice> f =dbqInvoice.GetInvoiceByEmail(user.getEmail());
        
        System.out.println(user.getEmail());
        if (f!=null){
            System.out.println("get successfully");
            model.addAttribute("InvoiceList", f);
        }else{
            System.out.println("get unsuccessfully");
        }
        List<InvoiceType> invoicetypes = dpit.GetInvoiceTypeList();
        model.addAttribute("invoicetypes", invoicetypes);
        return "profile";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.POST)
    public String UpdateProfile(HttpSession session, @ModelAttribute() User user, Model model) {
        User u = (User) session.getAttribute("user");
        user.setIdUser(u.getIdUser());
        user.setEmail(u.getEmail());
        //System.out.println("email: "+user.getEmail());
        if (dbq.UpdateUserInfor(user)) {
            session.setAttribute("user", user);
            return "profile";
        }
        return "profile";
    }
}
