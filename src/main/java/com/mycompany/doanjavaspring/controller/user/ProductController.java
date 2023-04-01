    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.config.Utils;
import com.mycompany.database.DBProduct;
import com.mycompany.model.Product;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author truongthanh
 */
@Controller
public class ProductController {
    
    private DBProduct dbq = new DBProduct();
    
    @RequestMapping(value = "/products")
    public String products(Model model,@RequestParam(required = false) String page, 
            @RequestParam(required = false) String id) {
        int page_id = Utils.Page(page);
        List<Product> products;
        if (dbq.GetProductList(page_id) != null) {
            products = dbq.GetProductListUser(page_id);
            model.addAttribute("products",products);
        } else System.out.println("failed");
        return "/products";
    }
    @RequestMapping(value = "/wig")
    public String wig(Model model,@RequestParam(required = false) String page, 
            @RequestParam(required = false) String id) {
        int page_id = Utils.Page(page);
        List<Product> wigs;
        if (dbq.GetProductList(page_id) != null) {
            wigs = dbq.GetProductListByType(page_id,"Wig");
            model.addAttribute("wigs",wigs);
        } else System.out.println("failed");
        return "wig";
    }
    
    @RequestMapping(value = "/cloth")
    public String cloth(Model model,@RequestParam(required = false) String page,
            @RequestParam(required = false) String id) {
        int page_id = Utils.Page(page);
        List<Product> clothes;
        if (dbq.GetProductList(page_id) != null) {
            clothes = dbq.GetProductListByType(page_id,"Trang Phục");
            model.addAttribute("clothes",clothes);
        } else System.out.println("failed");
        return "cloth";
    }
    
    @RequestMapping(value = "/accessory")
    public String accessory(Model model,@RequestParam(required = false) String page,
            @RequestParam(required = false) String id) {
        int page_id = Utils.Page(page);
        List<Product> accessories;
        if (dbq.GetProductList(page_id) != null) {
            accessories = dbq.GetProductListByType(page_id,"Phụ Kiện");
            model.addAttribute("accessories",accessories);
        } else System.out.println("failed");
        return "accessory";
    }
    
    @RequestMapping(value = "/productDetail")
    public String productDetail(@RequestParam(required = false) String idProduct, Model model) {
        try {
            int product_id = Integer.parseInt(idProduct);
            Product f = dbq.GetProductByIdProduct(product_id);
            if (f == null) {
                return "redirect:/";
            }
            model.addAttribute("product", f);
            model.addAttribute("wig", f);
            model.addAttribute("cloth", f);
            model.addAttribute("accessory", f);
            return "productDetail";
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return "redirect:/";
        }
    }
}
