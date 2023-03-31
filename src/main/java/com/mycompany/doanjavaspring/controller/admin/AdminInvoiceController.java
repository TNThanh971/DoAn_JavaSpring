/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.admin;

import com.mycompany.config.Utils;
import com.mycompany.database.DBInvoice;
import com.mycompany.database.DBInvoiceType;
import com.mycompany.model.Admin;
import com.mycompany.model.Invoice;
import com.mycompany.model.InvoiceDetail;
import com.mycompany.model.InvoiceType;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author truongthanh
 */
@Controller
public class AdminInvoiceController {
    DBInvoice dbq = new DBInvoice();
    DBInvoiceType dpit= new DBInvoiceType();
    
    @RequestMapping(value = "/admin/adminListInvoices")
    public String adminListInvoices(HttpSession session, @RequestParam(required = false) String page, 
            @ModelAttribute() Admin admin, Model model) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/adminLogin";
        }
        int page_id = Utils.Page(page);
        List<InvoiceType> invoicetypes = dpit.GetInvoiceTypeList();
        List<Invoice> invoice;
        if (dbq.GetInvoiceList(page_id) != null) {
            invoice = dbq.GetInvoiceList(page_id);
            model.addAttribute("invoicetypes", invoicetypes);
            model.addAttribute("adminInvoices",invoice);
        } else System.out.println("failed");
        return "admin/adminListInvoices";
    }
    
    @RequestMapping(value = "/admin/adminInvoiceDetail")
    public String adminInvoiceDetail(HttpSession session, @ModelAttribute() Admin admin, @RequestParam(required = false) String idInvoice, Model model) throws SQLException {
        try {
            if (session.getAttribute("admin") == null) {
                return "redirect:/admin/adminLogin";
            }
            Invoice f = dbq.GetInvoiceByIdInvoice(idInvoice);
            List<InvoiceDetail> lstIdDetails= dbq.getListProductDetailByIdInvoice(idInvoice);
            if (f == null) {
                return "redirect:/admin/adminListInvoices";
            } else {
                model.addAttribute("lstProductsOfInvoiceDetail",lstIdDetails);
                model.addAttribute("invDetail", f);
                return "/admin/adminInvoiceDetail";
            }

        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            return "redirect:/admin/adminListProduct";
        }
    }
    @RequestMapping(value ="/admin/updateInvoiceStatus")
    public String adminUpdateInvoiceStatus(HttpSession session, @RequestParam String idStatus,
            @RequestParam String idInvoice){
        System.out.println(idStatus+" and "+idInvoice);
        try {
            if (session.getAttribute("admin")==null){
                return "redirect:/admin/adminLogin";
            }
            if (dbq.updateInvoiceStatus(idStatus,idInvoice)){
                return "/admin/adminListInvoice";
            }
        } catch (Exception e) {
        }
        return "/admin/adminListInvoice";
    }
}
