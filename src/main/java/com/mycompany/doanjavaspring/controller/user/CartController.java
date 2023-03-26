/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.database.DBCart;
import com.mycompany.database.DBUser;
import com.mycompany.model.Cart;
import com.mycompany.model.User;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author truongthanh
 */
@Controller
public class CartController {

    DBCart dbq = new DBCart();

    @RequestMapping(value = "/cart")
    public String cart(HttpSession session, Model model, @RequestParam(required = false) String idUser) {
        if (session.getAttribute("user") == null) {
            return "/";
        }
        try {
            List<Cart> f;
            if (dbq.GetCartByIdUser(idUser) != null) {
                f = dbq.GetCartByIdUser(idUser);
                model.addAttribute("userCarts", f);
            } else {
                System.out.println("failed");
                return "redirect:/";
            }

        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return "/signIn";
        }
        return "/cart";
    }
}
