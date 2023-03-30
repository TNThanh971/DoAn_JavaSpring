/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.config.Utils;
import com.mycompany.database.DBCart;
import com.mycompany.database.DBInvoice;
import com.mycompany.database.DBProduct;
import com.mycompany.model.Cart;
import com.mycompany.model.Invoice;
import com.mycompany.model.User;
import java.util.List;
import javax.servlet.http.HttpSession;
import jdk.internal.logger.BootstrapLogger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author truongthanh
 */
@Controller
public class PurchaseController {

    DBCart dbqCart = new DBCart();
    DBInvoice dbqInvoice = new DBInvoice();
    DBProduct dbqProduct = new DBProduct();

    @RequestMapping(value = "/checkout", method = {RequestMethod.POST, RequestMethod.GET})
    public String checkout(HttpSession session, Model model,
            @RequestParam(required = false) String idUser) {
        if (session.getAttribute("user") == null) {
            return "redirect:/signIn";
        }
        List<Cart> f;
        if (dbqCart.GetCartByIdUser(idUser) != null) {
            f = dbqCart.GetCartByIdUser(idUser);
            model.addAttribute("userCarts", f);
            int subtotal = 0;
            float weight = 0;
            int shipFee = 0;
            float pondFee = 0;
            for (Cart var : f) {
                pondFee += (var.getProductPrice() * 1.0 * 0.3);
                subtotal += (var.getCartProductQuantity() * var.getRentalPrice());
                weight += (1.0 * var.getCartProductWeight() * var.getCartProductQuantity() / 1000);
            }
            model.addAttribute("subtotalInvoice", subtotal);
            model.addAttribute("pondFee", (int) pondFee);
            if (weight < 1) {
                shipFee = 15000;
                model.addAttribute("shipFee", 15000);
            } else if (weight < 2) {
                shipFee = 23000;
                model.addAttribute("shipFee", 23000);
            } else {
                shipFee = (int) (weight * 1000 / 0.1);
                model.addAttribute("shipFee", shipFee);
            }
            model.addAttribute("weightOfCart", weight);
            model.addAttribute("totalInvoice", subtotal + shipFee + (int) pondFee);
        }
        return "/checkout";
    }

    @RequestMapping(value = "/createInvoice", method = {RequestMethod.POST, RequestMethod.GET})
    public String CreateInvoice(HttpSession session, Model model,
            @RequestParam(required = false) String rentalDays,
            @RequestParam(required = false) String invNote) {
        if (session.getAttribute("user") == null) {
            return "redirect:/signIn";
        }
        User user = (User) session.getAttribute("user");
        List<Cart> f;
        if (dbqCart.GetCartByIdUser(Integer.toString(user.getIdUser())) != null) {
            f = dbqCart.GetCartByIdUser(Integer.toString(user.getIdUser()));
            model.addAttribute("userCarts", f);
            int subtotal = 0;
            float weight = 0;
            int shipFee = 0;
            float pondFee = 0;
            for (Cart var : f) {
                pondFee += (var.getProductPrice() * 1.0 * 0.3);
                subtotal += (var.getCartProductQuantity() * var.getRentalPrice());
                weight += (1.0 * var.getCartProductWeight() * var.getCartProductQuantity() / 1000);
            }
            model.addAttribute("subtotalInvoice", subtotal);
            model.addAttribute("pondFee", (int) pondFee);
            if (weight < 1) {
                shipFee = 15000;
                model.addAttribute("shipFee", 15000);
            } else if (weight < 2) {
                shipFee = 23000;
                model.addAttribute("shipFee", 23000);
            } else {
                shipFee = (int) (weight * 1000 / 0.1);
                model.addAttribute("shipFee", shipFee);
            }
            model.addAttribute("weightOfCart", weight);
            model.addAttribute("totalInvoice", subtotal + shipFee + (int) pondFee);
        }

        int totalPrice = (int) model.getAttribute("totalInvoice");
        int shipFee = (int) model.getAttribute("shipFee");
        int pondFee = (int) model.getAttribute("pondFee");
        // create invoice with status wait for user's pasyment
        Invoice invoice = new Invoice();
        invoice.setIdUser(user.getIdUser());
        invoice.setUserFullName(user.getFirstName());
        invoice.setPhoneNumber(user.getPhoneNumber());
        invoice.setEmail(user.getEmail());
        invoice.setUserAddress(user.getAddress());
        invoice.setAmountOfDay(Integer.parseInt(rentalDays));
        invoice.setInvoiceNote(invNote);
        invoice.setTotalPrice(totalPrice);
        invoice.setInvoiceFeeTransport(shipFee);
        invoice.setInvoiceFeePond(pondFee);
        invoice.setIdInvoiceStatus(2);
        invoice.setCreateAt(Utils.StrDate());
        f = dbqCart.GetCartByIdUser(Integer.toString(user.getIdUser()));
        if (dbqInvoice.InsertInvoice(invoice)) {
            System.out.println("create invoice successfully");
            //create detail invoice after inserting the invoice
            if (dbqCart.GetCartByIdUser(Integer.toString(user.getIdUser())) != null) {
                model.addAttribute("userCarts", f);
                for (Cart var : f) {
                    if (dbqInvoice.InsertInvoiceDetail(var,
                            Integer.toString(user.getIdUser()), Integer.toString(var.getCartProductQuantity()))) {
                        System.out.println("create Invoice detail succesfully");
                    } else {
                        System.out.println("create Invoice detail unsuccesfully");
                    }
                }
            }
        } else {
            System.out.println("create Invoice unsuccesfully");
        }
        // update quantity of cart
        for(Cart var : f){
            if(dbqProduct.updateProductAfterPurchase(var, Integer.toString(var.getCartProductQuantity()))){
                System.out.println("update product quantity successfully");
            }
            else{
                System.out.println("update product quantity unsuccessfully");
            }
        }
        // delete cart
        try {
            if (dbqCart.DelCart(Integer.toString(user.getIdUser())) == 1) {
                System.out.println("delete Cart detail succesfully");
                return "redirect:/";
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("failed");
        }
        return "redirect:/";
    }
}
