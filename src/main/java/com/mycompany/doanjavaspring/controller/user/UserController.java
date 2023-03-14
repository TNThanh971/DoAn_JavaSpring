/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.database.DBQuery;
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
public class UserController {
    DBQuery dbq = new DBQuery();

    @RequestMapping(value = "/profile")
    public String Profile(HttpSession session, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/";
        }
        return "profile";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.POST)
    public String UpdateProfile(HttpSession session, @ModelAttribute() User user, Model model, @RequestParam("password2") String pass) {
        if (session.getAttribute("user") == null) {
            return "redirect:/";
        }
        User u = (User) session.getAttribute("user");
        user.setIdUser(u.getIdUser());
        user.setEmail(u.getEmail());
        if (dbq.UpdateUserInfor(user)) {
            session.setAttribute("user", user);
            return "profile";
        }
//        if (pass!=null){
//            dbq.UpdateUserPassword(pass, user);
//            return "profile";
//        }
        return "profile";
    }

    
    
}
