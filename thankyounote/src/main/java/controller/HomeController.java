package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

    @Autowired
    HttpSession session;

    @RequestMapping(value = "/")
    public String main() {
        System.out.println("HomeControllermain()>>>>>>>>>>>>>>>>>");

        System.out.println("name : " + session.getAttribute("name"));
        return "index";
    }
}
