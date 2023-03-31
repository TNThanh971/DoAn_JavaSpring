/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.database.DBInvoice;
import com.mycompany.model.Invoice;
import com.mycompany.model.InvoiceDetail;
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
public class InvoiceController {

    DBInvoice dbqInvoiceDetail = new DBInvoice();

    @RequestMapping(value = "/invoiceDetail")
    public String invoiceDetail(HttpSession session, Model model,
            @RequestParam() String idInvoice) {
        if (session.getAttribute("user") == null) {
            return "redirect:/";
        }
        List<InvoiceDetail> f = dbqInvoiceDetail.getListProductDetailByIdInvoice(idInvoice);
        Invoice f1 = dbqInvoiceDetail.GetInvoiceByIdInvoice(idInvoice);
        if (f1 != null) {
            System.out.println(f1.getAmountOfDay());
            model.addAttribute("invoiceUserInfo", f1);
        }
        if (f != null) {
            model.addAttribute("UserInvoiceDetail", f);
            int cartSum=0;
            for (InvoiceDetail varInvoice: f){
                cartSum+= varInvoice.getProductRentalPrice()*varInvoice.getQuantity();
            }
            model.addAttribute("cartSum",cartSum);
        }

        return "invoiceDetail";
    }
}
