/*
 */
package me.shafin.webmessenger.services;

import me.shafin.webmessenger.dto.LoginAuth;
import me.shafin.webmessenger.dto.LoginReq;

/**
 *
 * @author SHAFIN
 */
public class LoginService {
    
    public static LoginAuth verifyLogin(LoginReq loginReq){
        LoginAuth loginAuth = new LoginAuth();
        loginAuth.setMessageTitle("Login success");
        loginAuth.setMessageBody("");
        loginAuth.setRequestedId(loginReq.getRegistrationNo());
        loginAuth.setRequestedIdValid(true);
        loginAuth.setRequestedPasswordValid(true);
        return loginAuth;
    }
    
}
