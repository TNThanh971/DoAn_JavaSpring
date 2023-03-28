/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import com.mycompany.database.DBCart;
import com.mycompany.model.Cart;
import java.util.List;
import javax.servlet.http.HttpSession;
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
public class CartController {

    DBCart dbq = new DBCart();

    @RequestMapping(value = "/cart", method = {RequestMethod.POST, RequestMethod.GET})
    public String GetListProductInCart(HttpSession session,
            @RequestParam(required = false) String idUser,
            @RequestParam(required = false) String idProduct,
            @RequestParam(required = false) String quantity, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/signIn";
        }
        List<Cart> f;
        if (dbq.GetCartByIdUser(idUser) != null) {
            f = dbq.GetCartByIdUser(idUser);
            model.addAttribute("userCarts", f);

            int subtotal = 0;
            float weight = 0;
            int shipFee = 0;
            for (Cart var : f) {
                subtotal += (var.getCartProductQuantity() * var.getPrice());
                weight += (1.0 * var.getCartProductWeight() * var.getCartProductQuantity() / 1000);
                System.out.println(weight);
            }
            System.out.println(weight);
            model.addAttribute("subtotalInvoice", subtotal);
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
            model.addAttribute("total", subtotal + shipFee);
        }
        return "/cart";
    }

    @RequestMapping(value = "/removeProductFromCart", method = {RequestMethod.GET, RequestMethod.POST})
    public String RemoveProductCart(HttpSession session,
            @RequestParam(required = false) String idUser,
            @RequestParam(required = false) String idProduct, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/signIn";
        }
        if (idUser != null && idProduct != null) {
            // create and uprate product to cart
            int is_reg = dbq.DelProductToCart(idUser, idProduct);
            if (is_reg == 1) {
                System.out.println("Delete successfully");
            } else {
                System.out.println("Delete unsuccessfully");
                return "redirect:/";
            }
        }

        List<Cart> f;
        if (dbq.GetCartByIdUser(idUser) != null) {
            f = dbq.GetCartByIdUser(idUser);
            model.addAttribute("userCarts", f);

            int subtotal = 0;
            float weight = 0;
            int shipFee = 0;
            weight = 0;
            for (Cart var : f) {
                subtotal += (var.getCartProductQuantity() * var.getPrice());
                weight += (1.0 * var.getCartProductWeight() * var.getCartProductQuantity() / 1000);
                System.out.println(weight);
            }
            System.out.println(weight);
            model.addAttribute("subtotalInvoice", subtotal);
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
            model.addAttribute("total", subtotal + shipFee);
        }

        return "/cart";
    }

    @RequestMapping(value = "/addProductToCart", method = {RequestMethod.GET, RequestMethod.POST})
    public String AddProductToCart(HttpSession session,
            @RequestParam(required = false) String idUser,
            @RequestParam(required = false) String idProduct,
            @RequestParam(required = false) String quantity, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/signIn";
        }
        if (idUser != null && idProduct != null && quantity != null) {
            // create and uprate product to cart
            boolean is_reg = dbq.AddProductToCart(idUser, idProduct, quantity);
            if (is_reg == true) {
                System.out.println("create or update successfully");
            } else {
                return "redirect:/";
            }
        }
        List<Cart> f;
        if (dbq.GetCartByIdUser(idUser) != null) {
            f = dbq.GetCartByIdUser(idUser);
            model.addAttribute("userCarts", f);

            int subtotal = 0;
            float weight = 0;
            int shipFee = 0;
            for (Cart var : f) {
                subtotal += (var.getCartProductQuantity() * var.getPrice());
                weight += (1.0 * var.getCartProductWeight() * var.getCartProductQuantity() / 1000);
                System.out.println(weight);
            }
            System.out.println(weight);
            model.addAttribute("subtotalInvoice", subtotal);
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
            model.addAttribute("total", subtotal + shipFee);
        }
        return "/cart";
    }
}
