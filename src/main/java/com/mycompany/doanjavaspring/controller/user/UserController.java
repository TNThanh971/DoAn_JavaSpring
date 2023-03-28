/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.database.DBUser;
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
    DBUser dbq = new DBUser();

    @RequestMapping(value = "/profile")
    public String Profile(HttpSession session, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/";
        }
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
//    @RequestMapping(value = "/profile", method = RequestMethod.POST)
//    public String UpdateSecurity(HttpSession session, 
//            @RequestParam() String password2,
//            @ModelAttribute() User user, Model model) {
//        User u = (User) session.getAttribute("user");
//        user.setIdUser(u.getIdUser());
//        user.setEmail(u.getEmail());
//        //System.out.println("email: "+user.getEmail());
//        if (dbq.UpdateUserPassword(password2,user)) {
//            session.setAttribute("user", user);
//            return "profile";
//        }
//        return "profile";
//    }
}
