package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import service.UserService;

import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping(value="/login")
    public String login() {
        System.out.println("loginForm.jsp로 이동>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

        return "loginForm";
    }

    @GetMapping(value="/register")
    public String registerForm(){
        System.out.println("UserController registerForm()>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

        return "registerForm";
    }

    @PostMapping(value="/loginCheck")
    @ResponseBody
    public String loginCheck(@RequestParam Map<String, String> map) {
        System.out.println("UserController : loginCheck 메소드>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

        System.out.println("id : " + map.get("id"));
        System.out.println("pwd : " + map.get("pwd"));

        return userService.loginCheck(map);
    }

    @GetMapping("/logout")
    @ResponseBody
    public void logout(){
        System.out.println("UserController : logout 메소드 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

        userService.logout();
    }

    @PostMapping("/valCheck")
    @ResponseBody
    public String valCheck(String id) {
        return userService.valCheck(id);
    }

}
