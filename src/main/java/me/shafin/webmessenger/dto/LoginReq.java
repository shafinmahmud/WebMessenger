/*
 */
package me.shafin.webmessenger.dto;

/**
 *
 * @author SHAFIN
 */
public class LoginReq {

    private String registrationNo;
    private String password;

    public LoginReq() {
    }

    public LoginReq(String registrationNo, String password) {
        this.registrationNo = registrationNo;
        this.password = password;
    }

    public String getRegistrationNo() {
        return registrationNo;
    }

    public void setRegistrationNo(String registrationNo) {
        this.registrationNo = registrationNo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
