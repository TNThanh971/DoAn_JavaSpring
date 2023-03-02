
package com.mycompany.doanjavaspring.controller;

import com.mycompany.database.DBQuery;
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
    private DBQuery dbq = new DBQuery();
//    @RequestMapping("/")
//    public String productList(Model model){
//        List<Product> products=dbq.GetProductList();
//        return "/";
//    }
    
}
