package com.exp.controller;

import org.apache.commons.httpclient.HttpException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.GetMethod;

import java.io.IOException;

//@CrossOrigin
@Controller
public class Login {
    @RequestMapping(value = "login")
    public String login(){
        return "login";
    }

    @RequestMapping(value = "checkLogin")
    @ResponseBody
    public String checkLogin(){
        HttpClient client = new HttpClient();
        GetMethod getMethod = new GetMethod("https://c.y.qq.com/v8/fcg-bin/fcg_v8_toplist_cp.fcg?g_tk=5381&uin=0&format=json&inCharset=utf-8&outCharset=utf-8%C2%ACice=0&platform=h5&needNewCode=1&tpl=3&page=detail&type=top&topid=27");
        String res = "";
        int code = 0;
        try {
            code = client.executeMethod(getMethod);
            if (code == 200) {
                res = getMethod.getResponseBodyAsString();
                System.out.println(res);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return res;
    }
}



