/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.config.Utils;
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
public class AuthentificationUserController {

    DBQuery dbq = new DBQuery();

    // sign in
    @RequestMapping(value = "/signInSignUp")
    public String SignInProcess(Model model) {
        return "signInSignUp";
    }

    @RequestMapping(value = "/signInSignUp", method = RequestMethod.POST)
    public String SignInProcess(HttpSession session, @RequestParam(required = false) String url, @ModelAttribute("signIn") User user, Model model) {
        if (dbq.Login(user.getEmail(), user.getPassword())) {
            session.setAttribute("user", dbq.GetUserByEmail(user.getEmail()));
            if (url != null && !url.equals("")) {
                return "redirect:" + Utils.URLDecode(url);
            }
            return "redirect:/";
        }
        model.addAttribute("msg", "Tài khoản không chính xác!");
        return "signInSignUp";
    }
    //end sign in

    //sign up
    //@RequestMapping(value = "/signInSignUp", method = RequestMethod.POST)
//    public String SignUpProcess(HttpSession session, @ModelAttribute("signUp") User user, @RequestParam("password2") String password2, Model model) {
//        System.out.println("user: " + user.getEmail());
//        System.out.println("pass2: " + password2);
//        if (user.getPassword().equals(password2) && user.getPassword()!=null) {
//            int is_reg = dbq.SignUpUser(user);
//            if (is_reg == 1) {
//                session.setAttribute("user", dbq.GetUserByEmail(user.getEmail()));
//                return "redirect:/";
//            } else {
//                model.addAttribute("msg", is_reg == 0 ? "Email đã tồn tại!" : "Có lỗi xảy ra, vui lòng thử lại!");
//            }
//        } else {
//            model.addAttribute("msg", "Mật khẩu nhập lại không trùng khớp!");
//        }
//        return "signInSignUp";
//    }
    //end sign up
}
