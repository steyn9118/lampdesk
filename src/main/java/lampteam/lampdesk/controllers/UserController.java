package lampteam.lampdesk.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;

@Controller
@RequiredArgsConstructor
public class UserController {

    public String register(){
        return "register";
    }

}
