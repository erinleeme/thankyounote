package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/sample")
@Controller
public class SampleController {
    
    @GetMapping("/all")
    public String doAll(){
        return"all";
    }

    @GetMapping("/member")
    public String doMember(){
        return "member";
    }

    @GetMapping("/admin")
    public String doAdmin(){
       return "admin";
    }
    
    
}
