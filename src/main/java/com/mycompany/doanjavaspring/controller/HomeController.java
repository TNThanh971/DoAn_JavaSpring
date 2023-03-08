package com.mycompany.doanjavaspring.controller;

import com.mycompany.config.Utils;
import com.mycompany.database.DBQuery;
import com.mycompany.model.Product;
import com.mycompany.model.User;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    private DBQuery dbq = new DBQuery();

    @RequestMapping(value = "/")
    public String home(HttpSession session, @RequestParam(required = false) String page, Model model) {
        int page_id = Utils.Page(page);
        List<Product> products;
        if (dbq.GetProductList(page_id) != null) {
            products = dbq.GetProductList(page_id);
            model.addAttribute("products",products);
        } else System.out.println("failed");
        return "home";
    } 
    
    @RequestMapping(value = "/loginLogout")
    public String index(Model model) {
        return "loginLogout";
    }

    public String addUser(@RequestParam("firstName") String firstName, @RequestParam("email") String email) {
        User user = new User();
        user.setFirstName(firstName);
        user.setEmail(email);
        dbq.SignUpUser(user);
        return "redirect:/";
    }

    @RequestMapping(value = "/loginLogout", method = RequestMethod.POST)
    public String SignUpProcess(@ModelAttribute("signUp") User user, Model model) {

        boolean is_reg = dbq.SignUpUser(user);
        if (is_reg == true) {

            return "loginLogout";
        }
        return "redirect:/";
    }

    public String addUser2(@RequestParam("password") String pass, @RequestParam("email") String email) {
        User user = new User();
        user.setPassword(pass);
        user.setEmail(email);
        dbq.GetUserByAuthentication(user);
        return "redirect:/";
    }

    @RequestMapping(value = "/loginLogout", method = RequestMethod.GET)
    public String SignInProcess(@ModelAttribute("signIn") User user, Model model) {
        User is_reg = dbq.GetUserByAuthentication(user);
        if (is_reg == null) {
            return "loginLogout";
        }
        return "redirect:/";
    }
    @RequestMapping(value = "/cart")
    public String cart(Model model) {
        return "cart";
    }
    @RequestMapping(value = "/checkout")
    public String checkout(Model model) {
        return "checkout";
    }
}
