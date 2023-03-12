package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.config.Utils;
import com.mycompany.database.DBQuery;
import com.mycompany.model.Product;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
    
    @RequestMapping(value = "/checkout")
    public String checkout(Model model) {
        return "checkout";
    }
}
