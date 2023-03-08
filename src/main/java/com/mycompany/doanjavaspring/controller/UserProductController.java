
package com.mycompany.doanjavaspring.controller;

import com.mycompany.config.Utils;
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
public class UserProductController {
    private DBQuery dbq = new DBQuery();
    
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
    public String productsById(Model model,
            @RequestParam(required = false) String id) {
        Product productById;
        int temp = Integer.parseInt(id);
        System.err.println(id);
        if (dbq.GetProductByIdProduct(temp) != null) {
            productById = dbq.GetProductByIdProduct(temp);
            model.addAttribute("productById",productById);
        } else System.out.println("failed");
        return "productDetail";
    }
}
