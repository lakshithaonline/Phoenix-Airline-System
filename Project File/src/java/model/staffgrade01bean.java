/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author IS Rachinthana
 */
public class staffgrade01bean {
    private String uname,fullname,empid,password;  
 public String getuname() {  
    return uname;  
}  
 public void setuname(String uname) {  
    this.uname = uname;
}
  public String getfullname() {  
    return fullname;  
}  
public void setfullname(String fullname) {  
    this.fullname= fullname;  
}  
public String getempid(){
     return empid;
}
public void setempid(String empid){
    this.empid= empid;
}
 public String getpassword() {  
    return password;  
}  
 public void setpassword(String password) {  
    this.password = password;  
}  
}