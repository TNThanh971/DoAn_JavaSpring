/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.config;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author truongthanh
 */
public class Utils {
    public static int LIMIT_ROWS = 8;
    public static String DB_MYSQL;
    public static int Page(String page) {
        try {
            int p = Integer.parseInt(page);
            if (p < 1) {
                p = 1;
            }
            return p;
        } catch (NumberFormatException ex) {
            return 1;
        }
    }
    public static String Offset(int page, int limit) {
        if (limit == 0) {
            return "";
        }
        if (page < 1) {
            page = 1;
        }
        return " LIMIT " + ((page - 1) * limit) + "," + limit;
    }

    public static String Offset(int page) {
        return Offset(page, LIMIT_ROWS);
    }
    public static String SHA1(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger no = new BigInteger(1, messageDigest);
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } 
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
    public static String StrDate() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        return dtf.format(now);
    }

    public static String StrDate(String format) {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern(format);
        LocalDateTime now = LocalDateTime.now();
        return dtf.format(now);
    }
     public static String URLEncode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException ex) {
            return str;
        }
    }

    public static String URLDecode(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException ex) {
            return str;
        }
    }
}
