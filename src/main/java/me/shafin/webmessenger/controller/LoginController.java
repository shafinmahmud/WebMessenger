/*
 */
package me.shafin.webmessenger.controller;

import me.shafin.webmessenger.dto.LoginAuth;
import me.shafin.webmessenger.dto.LoginReq;
import me.shafin.webmessenger.services.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author SHAFIN
 */
@Controller
@RequestMapping("/")
public class LoginController {

    @RequestMapping("/")
    public String viewLogin() {
        return "login";
    }
    
    @RequestMapping(value = "/loginAuth", method = RequestMethod.POST)
    public @ResponseBody LoginAuth authLogin(@RequestBody LoginReq loginReq){
        return LoginService.verifyLogin(loginReq);
    }

}
