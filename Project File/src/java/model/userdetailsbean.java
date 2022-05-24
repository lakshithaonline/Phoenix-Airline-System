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
public class userdetailsbean {

   private String username,fullname,email,password;
   
   public String getusername() {  
    return username;  
}  
public void setusername(String username) {  
    this.username = username;  
}  
public String getfullname() {  
    return fullname;  
}  
public void setfullname(String fullname) {  
    this.fullname = fullname;  
}  
public String getemail() {  
    return email;  
}  
public void setemail(String email) {  
    this.email = email;  
}  
public String getpassword() {  
    return password; 
}  
public void setpassword(String password) {  
    this.password=password;  
}  


    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        // TODO code application logic here
    }
}

