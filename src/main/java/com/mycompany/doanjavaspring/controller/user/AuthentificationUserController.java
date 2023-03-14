/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.config.Utils;
import com.mycompany.database.DBUser;
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
public class AuthentificationUserController {

    DBUser dbq = new DBUser();

    // sign in
    @RequestMapping(value = "/signIn")
    public String SignInProcess(Model model) {
        return "signIn";
    }

    @RequestMapping(value = "/signIn", method = RequestMethod.POST)
    public String SignInProcess(HttpSession session, @RequestParam(required = false) String url, @ModelAttribute() User user, Model model) throws SQLException {
        if (dbq.Login(user.getEmail(), user.getPassword())== true) {
            session.setAttribute("user", dbq.GetUserByEmail(user.getEmail()));
            if (url != null && !url.equals("")) {
                return "redirect:" + Utils.URLDecode(url);
            }
            return "redirect:/";
        }
        model.addAttribute("msg", "Tài khoản không chính xác!");
        return "signIn";
    }
    //end sign in

    //sign up
    @RequestMapping(value = "/signUp")
    public String SignUp(Model model) {
        return "signUp";
    }

    @RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public String SignUpProcess(HttpSession session, @ModelAttribute() User user, @RequestParam("password2") String password2, Model model) {
        if (user.getPassword().equals(password2)) {
            int is_reg = dbq.SignUpUser(user);
            if (is_reg == 1) {
                session.setAttribute("user", dbq.GetUserByEmail(user.getEmail()));
                return "redirect:/";
            } else {
                model.addAttribute("msg", is_reg == 0 ? "Email đã tồn tại!" : "Có lỗi xảy ra, vui lòng thử lại!");
            }
        } else {
            model.addAttribute("msg", "Mật khẩu nhập lại không trùng khớp!");
        }
        return "signUp";
    }
    //end sign up
    
    @RequestMapping(value = "/logout")
    public String Logout(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:/";
    }
}
