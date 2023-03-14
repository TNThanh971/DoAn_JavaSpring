/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.database.DBQuery;
import com.mycompany.model.Cart;
import com.mycompany.model.User;
import java.util.List;
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
public class CartController {

    DBQuery dbq = new DBQuery();

    @RequestMapping(value = "/cart")
    public String cart(HttpSession session, Model model, @ModelAttribute() User user) {
        if (session.getAttribute("user") == null) {
            return "/signIn";
        }
        try {
            List<Cart> f = dbq.GetCartByIdUser(Integer.toString(user.getIdUser()));
            if (f == null) {
                return "redirect:/";
            }
            model.addAttribute("cart", f);
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return "/signIn";
        }
        return "cart";
    }
}
