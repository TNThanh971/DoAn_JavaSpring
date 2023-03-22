/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.admin;

import com.mycompany.config.Utils;
import com.mycompany.database.DBProduct;
import com.mycompany.database.DBProductType;
import com.mycompany.model.Admin;
import com.mycompany.model.Product;
import com.mycompany.model.ProductType;
import java.util.List;
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
public class AdminProductController {

    DBProduct dbq = new DBProduct();
    DBProductType db = new DBProductType();

    // admin's home page
    @RequestMapping(value = "/admin/adminIndex")
    public String adminIndex(HttpSession session, @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        return "/admin/adminIndex";
    }
    // end admin homepage

    // admin's adding product page
    @RequestMapping(value = "/admin/adminAddProduct")
    public String adminAddProduct(HttpSession session, @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        // transfer data from db to dropdown list in view
        List<ProductType> producttypes = db.GetProductTypeList();
        if (producttypes != null) {
            model.addAttribute("producttypes", producttypes);
        } else {
            System.out.println("type is null");
        }
        return "/admin/adminAddProduct";
    }

    @RequestMapping(value = "/admin/adminAddProduct", method = RequestMethod.POST)
    public String adminAddProduct(HttpSession session, @ModelAttribute() Product product,
            @RequestParam("ProductType") String productType, Model model) {
        //lay gia tri cua value trong dropdown list
        product.setIdProductType(Integer.parseInt(productType));
        boolean is_reg = dbq.addProduct(product);

        if (is_reg == true) {
            return "redirect:/admin/adminListProduct";
        } else {
            model.addAttribute("msg", is_reg == false ? "San pham đã tồn tại!" : "Có lỗi xảy ra, vui lòng thử lại!");
        }
        return "/admin/adminAddProduct";
    }

    //end admin adding product page
    // admin product list
    @RequestMapping(value = "/admin/adminListProduct")
    public String adminListProduct(HttpSession session, @ModelAttribute() Admin admin, @RequestParam(required = false) String page, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        int page_id = Utils.Page(page);
        List<Product> products = dbq.GetProductList(page_id);
        List<ProductType> producttypes = db.GetProductTypeList();
        if ( products != null) {
            products = dbq.GetProductList(page_id);
            model.addAttribute("producttypes", producttypes);
            model.addAttribute("products", products);
        } else {
            System.out.println("failed");
        }
        return "/admin/adminListProduct";
    }

    // end admin product list
    // admin  Product detail
    @RequestMapping(value = "/admin/adminProductDetail")
    public String adminProductDetail(HttpSession session, @ModelAttribute() Admin admin, @RequestParam(required = false) String idProduct, Model model) {
        try {
            if (session.getAttribute("admin") == null) {
                return "redirect:/admin/adminLogin";
            }
            int product_id = Integer.parseInt(idProduct);
            Product f = dbq.GetProductByIdProduct(product_id);
            if (f == null) {
                return "redirect:/admin/adminListProduct";
            } else {
//                if (dbq.addProduct(p)){
//                    return "redirect:/admin/adminListProduct";
//                }
                System.out.println(f.getProductSize());
                model.addAttribute("proDetail", f);

                return "/admin/adminProductDetail";
            }

        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return "redirect:/admin/adminListProduct";
        }
    }
    // end admin product detail 
}
