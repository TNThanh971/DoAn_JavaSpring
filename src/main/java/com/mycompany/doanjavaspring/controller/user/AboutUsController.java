/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.doanjavaspring.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author truongthanh
 */
@Controller
public class AboutUsController {
    //sign up
    @RequestMapping(value = "/aboutUs")
    public String AboutUs(Model model) {
        return "aboutUs";
    }
}
