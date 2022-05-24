/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author IS Rachinthana
 */
public class dbconnect {
    public static Connection createConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenix_airline_db", "root", "");
        
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
   /* private void autoId()
     {
         try {
         String sql="SELECT id FROM AutoID ORDER BY id DESC LIMIT 1";        
         PreparedStatement  pst=createConnection().prepareStatement(sql);
         ResultSet rs=pst.executeQuery();
       if(rs.next())
       {
            String rnno=rs.getString("id");
            int co=rnno.length();
           String txt= rnno.substring(0, 2);
           String num=rnno.substring(2, co);
           int n=Integer.parseInt(num);
           n++;
           String snum=Integer.toString(n);
           String ftxt=txt+snum;
           txtautoid.setText(ftxt);

       }
       else
       {
           txtautoid.setText("MI1000");
       }


    } catch (Exception e) {
        JOptionPane.showMessageDialog(rootPane, e);
    }

}*/
    public boolean checkUser(String uname,String password)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from userlogin where uname=? and password=?");
        ps.setString(1, uname);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    }
    
     public boolean checkstaffg1(String uname,String password)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from stafflogin where uname=? and password=?");
        ps.setString(1, uname);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
    }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    
    }
     
     public boolean checkstaffg2(String uname,String password)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from stafflogin02 where uname=? and password=?");
        ps.setString(1, uname);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
    }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    
    }
     /* PreparedStatement ps1 = createConnection().prepareStatement("select * from stafflogin02 where uname=? and password=?");
        ps1.setString(1, uname);
        ps1.setString(2,password);
        ResultSet rs1=ps1.executeQuery();
        st=rs1.next();
     */
    
    public boolean checkadmin(String uname,String password)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from adminlogin where uname=? and password=?");
        ps.setString(1,uname);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    }
    
     /*public boolean autoid(String ticketid,String flightid,String uname)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from Max(ticketid) from ticketdetails");
        ps.setString(1,ticketid);
        ps.setString(2,flightid);
        ps.setString(2,flightid);
        ResultSet rs=ps.executeQuery("select * from Max(ticketid) from ticketdetails");
        st=rs.next();
        rs.getString("Max(ticketid)");
            if(rs.getString("Max(ticketid)")==null)
            {
                
                rs.getBytes("C0001");
            }
             else
            {
                Long id = Long.parseLong(rs.getString("Max(id)").substring(2,rs.getString("Max(id)").length()));
                id++;
                ticketid.getBytes("C0" + String.format("%03d", ticketid));
            }
        
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
      
    return st;
    }
    */
    
    public boolean movestafftog1(String uname)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("call acceptg1(?) ");
        ps.setString(1,uname);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    }
    public boolean movestafftog2(String uname)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("call acceptg2(?) ");
        ps.setString(1,uname);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    }
    
    public boolean regUser(String uname,String fullname,String email,String password) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into userlogin values(?,?)");
    ps.setString(1,uname);
    ps.setString(2,password);
    int i= ps.executeUpdate();
    
    PreparedStatement ps1 = createConnection().prepareStatement("insert into userdetails values(?,?,?,?)");
    ps1.setString(1,uname);
    ps1.setString(2,fullname);
    ps1.setString(3,email);
    ps1.setString(4,password);
    int x= ps1.executeUpdate();
    
    if((i>0) && (x>0))
        return true;
    else
        return false;
    }
    
     public boolean sendMsg(String name,String email,String phoneno,String messege) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into contactmsg values(?,?,?,?)");
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,phoneno);
    ps.setString(4,messege);
    int i= ps.executeUpdate();
    
    if((i>0))
        return true;
    else
        return false;
    }
    
     public boolean ticketIDgen(String ticketid,String flightid,String uname) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into ticketdetails (ticketid,flightid,uname) values(?,?,?)");
    ps.setString(1,ticketid);
    ps.setString(2,flightid);
    ps.setString(3,uname);
    int i= ps.executeUpdate();

    if((i>0))
        return true;
    else
        return false;
    }
     
      public boolean updateuserdetails(String username,String fullname,String email) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("UPDATE userdetails SET uname=?, fullname=?, email=?  WHERE uname=? ");
    ps.setString(1,username);
    ps.setString(2,fullname);
    ps.setString(3,email);
    ps.setString(4,username);
    
    int i= ps.executeUpdate();

    if((i>0))
        return true;
    else
        return false;
    }
      
      
     
     
    public boolean regStaff(String uname,String fullname,String empid,String password) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into temp_staff_login values(?,?)");
    ps.setString(1,uname);
    ps.setString(2,password);
    int i= ps.executeUpdate();
    
    PreparedStatement ps1 = createConnection().prepareStatement("insert into temp_staff_details values(?,?,?,?)");
    ps1.setString(1,uname);
    ps1.setString(2,fullname);
    ps1.setString(3,empid);
    ps1.setString(4,password);
 
    int x= ps1.executeUpdate();
    
    if((i>0) && (x>0))
        return true;
    else
        return false;
    }
    
     public boolean addflightinfo(String flightid,String flightfrom,String flightto,String departdate,String returndate,String time,String flghtstatus) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into flightstatus values(?,?,?,?,?)");
    ps.setString(1,flightid);
    ps.setString(2,flightfrom);
    ps.setString(3,flightto);
    ps.setString(4,time);
    ps.setString(5,flghtstatus);
    int i= ps.executeUpdate();

    PreparedStatement ps1 = createConnection().prepareStatement("insert into flightsinformations values(?,?,?,?,?,?)");
    ps1.setString(1,flightid);
    ps1.setString(2,flightfrom);
    ps1.setString(3,flightto);
    ps1.setString(4,departdate);
    ps1.setString(5,returndate);
    ps1.setString(6,time);
    int x= ps1.executeUpdate();
    
    if((i>0)&&(x>0))
        return true;
    else
        return false;
    }
     
    public static List<flightinfobean> getAllflightinfo(){  
        List<flightinfobean> list=new ArrayList<flightinfobean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from flightsinformations");  
      
            ResultSet rs=ps.executeQuery();  
       
            while(rs.next()){  
                flightinfobean e=new flightinfobean();  
                e.setflightid(rs.getString(1));  
                e.setflightfrom(rs.getString(2));  
                e.setflightto(rs.getString(3));  
                e.setdepartdate(rs.getString(4));  
                e.setreturndate(rs.getString(5));  
                e.settime(rs.getString(6));  
       
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    
    public static List<usercontactmsgbean > getAllusercontactMsg(){  
        List<usercontactmsgbean> list=new ArrayList<usercontactmsgbean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from contactmsg");  
      
            ResultSet rs=ps.executeQuery();  
       
            while(rs.next()){  
                usercontactmsgbean  e=new usercontactmsgbean ();  
                e.setname(rs.getString(1));  
                e.setemail(rs.getString(2));  
                e.setphoneno(rs.getString(3));  
                e.setmessege(rs.getString(4));  
            
       
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    
     public static List<flightinfobean> getAllflightfilter(String flightfrom, String flightto, String departdate, String returndate){  
        List<flightinfobean> list=new ArrayList<flightinfobean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from flightsinformations where flightfrom=? and flightto=? and departdate=? and returndate=? ");  
            ps.setString(1,flightfrom);
            ps.setString(2,flightto);
            ps.setString(3,departdate);
            ps.setString(4,returndate);
            ResultSet rs=ps.executeQuery();  
       
            while(rs.next()){  
                flightinfobean e=new flightinfobean();  
                e.setflightid(rs.getString(1));  
                e.setflightfrom(rs.getString(2));  
                e.setflightto(rs.getString(3));  
                e.setdepartdate(rs.getString(4));  
                e.setreturndate(rs.getString(5));  
                e.settime(rs.getString(6));  
       
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }

     public static List<flightstatusbean> getAllflightfilterstatus(String flightfrom, String flightto){  
        List<flightstatusbean> list=new ArrayList<flightstatusbean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from flightstatus where flightfrom=? and flightto=?");  
            ps.setString(1,flightfrom);
            ps.setString(2,flightto);
          
            ResultSet rs=ps.executeQuery();  
       
            while(rs.next()){  
                flightstatusbean e=new flightstatusbean();  
                e.setflightid(rs.getString(1));  
                e.setflightfrom(rs.getString(2));  
                e.setflightto(rs.getString(3));  
                e.settime(rs.getString(4));  
                e.setflghtstatus(rs.getString(5));  
       
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
     
     public static List<flightstatusbean> getAllflightfilterstatus2(String flightid){  
        List<flightstatusbean> list=new ArrayList<flightstatusbean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from flightstatus where flightid=? ");  
            ps.setString(1,flightid);
       
          
            ResultSet rs=ps.executeQuery();  
       
            while(rs.next()){  
                flightstatusbean e=new flightstatusbean();  
                e.setflightid(rs.getString(1));  
                e.setflightfrom(rs.getString(2));  
                e.setflightto(rs.getString(3));  
                e.settime(rs.getString(4));  
                e.setflghtstatus(rs.getString(5));  
       
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    

      public static List<flightinfobean> getAllflightfilter2(String flightfrom, String flightto, String departdate){  
        List<flightinfobean> list=new ArrayList<flightinfobean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from flightsinformations where flightfrom=? and flightto=? and departdate=? ");  
            ps.setString(1,flightfrom);
            ps.setString(2,flightto);
            ps.setString(3,departdate);
        
            ResultSet rs=ps.executeQuery();  
       
            while(rs.next()){  
                flightinfobean e=new flightinfobean();  
                e.setflightid(rs.getString(1));  
                e.setflightfrom(rs.getString(2));  
                e.setflightto(rs.getString(3));  
                e.setdepartdate(rs.getString(4));  
                e.setreturndate(rs.getString(5));  
                e.settime(rs.getString(6));  
       
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    
    public static List<flightstatusbean> getAllflightstatus(){  
        List<flightstatusbean> list=new ArrayList<flightstatusbean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from flightstatus");  
      
            ResultSet rs=ps.executeQuery();  
       
            while(rs.next()){  
                flightstatusbean e=new flightstatusbean();  
                e.setflightid(rs.getString(1));  
                e.setflightfrom(rs.getString(2));  
                e.setflightto(rs.getString(3));  
                e.settime(rs.getString(4));  
                e.setflghtstatus(rs.getString(5));  
       
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    public static List<ticketidgenbean> getAllticketdetails(){  
        List<ticketidgenbean> list=new ArrayList<ticketidgenbean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from ticketdetails");  
      
            ResultSet rs=ps.executeQuery();  
       
            while(rs.next()){  
                ticketidgenbean e=new ticketidgenbean();  
                e.setticketid(rs.getString(1));  
                e.setflightid(rs.getString(2));  
                e.setuname(rs.getString(3));  
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    
    /* public boolean checkreservedetails(String uname)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from adminlogin where uname=? and password=?");
        ps.setString(1,uname);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    }
     */
     
 public static List<ticketidgenbean> getAllreservedetails(String uname){  
        List<ticketidgenbean> list=new ArrayList<ticketidgenbean>();  
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from ticketdetails where uname=? ");  
          
            ps.setString(1,uname);
        
            ResultSet rs=ps.executeQuery();  
     
            while(rs.next()){  
                ticketidgenbean e=new ticketidgenbean();  
                e.setticketid(rs.getString(1));  
                e.setflightid(rs.getString(2));  
                e.setuname(rs.getString(3));  
               
       
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
public static List<ticketidgenbean> getAllreservedetails2(String uname){  
        List<ticketidgenbean> list=new ArrayList<ticketidgenbean>();  
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from userdetails where uname=?");  
          
            ps.setString(1,uname);
        
            ResultSet rs=ps.executeQuery();  
     
            while(rs.next()){  
                ticketidgenbean e=new ticketidgenbean();  
                e.setticketid(rs.getString(1));  
                e.setflightid(rs.getString(2));  
                e.setuname(rs.getString(3));  
               
       
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    
    public boolean userbooking(String uname,String tripmethod,String fullname,String passportid,String email,String departure,String arrival,String departuredate,String returndate,String classtype,String adult,String child) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into bookflight (uname,tripmethod,fullname,passportid,email,departure,arrival,departuredate,returndate,classtype,adult,child) values(?,?,?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1,uname);
    ps.setString(2,tripmethod);
    ps.setString(3,fullname);
    ps.setString(4,passportid);
    ps.setString(5,email);
    ps.setString(6,departure);
    ps.setString(7,arrival);
    ps.setString(8,departuredate);
    ps.setString(9,returndate);
    ps.setString(10,classtype);
    ps.setString(11,adult);
    ps.setString(12,child);
   
    int i= ps.executeUpdate();
    
    if(i>0)
        return true;
    else
        return false;
    }
       /*public static List<userdetailsbean> getuserdetails(){  
        List<userdetailsbean> list=new ArrayList<userdetailsbean>();  

        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from userdetails");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                userdetailsbean e=new userdetailsbean();  
                e.setusername(rs.getString(1));  
                e.setfullname(rs.getString(2));  
                e.setemail(rs.getString(3));  
                e.setpassword(rs.getString(4));  
         
               list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
*/
    public static List<flightbookingbeans> getAllBookings(){  
        List<flightbookingbeans> list=new ArrayList<flightbookingbeans>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from bookflight");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                flightbookingbeans e=new flightbookingbeans();  
                e.setuname(rs.getString(1));  
                e.settripmethod(rs.getString(2));  
                e.setfullname(rs.getString(3));  
                e.setpassportid(rs.getString(4));  
                e.setemail(rs.getString(5));  
                e.setdeparture(rs.getString(6));  
                e.setarrival(rs.getString(7));  
                e.setdeparturedate(rs.getString(8)); 
                e.setreturndate(rs.getString(9));
                e.setclasstype(rs.getString(10));
                e.setadult(rs.getString(11));
                e.setchild(rs.getString(12));
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }

    
public static List<nonstaffbean> getAllEmployees(){  
        List<nonstaffbean> list=new ArrayList<nonstaffbean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from temp_staff_details");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                nonstaffbean e=new nonstaffbean();  
                e.setuname(rs.getString(1));  
                e.setfullname(rs.getString(2));  
                e.setempid(rs.getString(3));  
                e.setpassword(rs.getString(4));  
                /*
                e.setchild(rs.getString(5));  
                e.setmplan(rs.getString(6));  
                e.setrooms(rs.getString(7));  
                e.setrequests(rs.getString(8)); 
                */
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }

public static List<staffgrade01bean> getAllEmployeesG1(){  
        List<staffgrade01bean> list=new ArrayList<staffgrade01bean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from grade01staff");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                staffgrade01bean e=new staffgrade01bean();  
                e.setuname(rs.getString(1));  
                e.setfullname(rs.getString(2));  
                e.setempid(rs.getString(3));  
                e.setpassword(rs.getString(4));  
                /*
                e.setchild(rs.getString(5));  
                e.setmplan(rs.getString(6));  
                e.setrooms(rs.getString(7));  
                e.setrequests(rs.getString(8)); 
                */
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
public static List<staffgrade02bean> getAllEmployeesG2(){  
        List<staffgrade02bean> list=new ArrayList<staffgrade02bean>();  
          
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from grade02staff");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                staffgrade02bean e=new staffgrade02bean();  
                e.setuname(rs.getString(1));  
                e.setfullname(rs.getString(2));  
                e.setempid(rs.getString(3));  
                e.setpassword(rs.getString(4));  
                /*
                e.setchild(rs.getString(5));  
                e.setmplan(rs.getString(6));  
                e.setrooms(rs.getString(7));  
                e.setrequests(rs.getString(8)); 
                */
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
   /* 
    public static List<bookingsbean> getallrooms(){  
        List<bookingsbean> list=new ArrayList<bookingsbean>();  
          
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from rooms");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                bookingsbean c=new bookingsbean();  
                c.setroomno(rs.getString(1));  
                c.setroomuname(rs.getString(2));  
                list.add(c);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    */
    public boolean checkroom(String roomno)
    {
        boolean st=false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from rooms where roomno=?");
        ps.setString(1, roomno);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    }
    
    public boolean assingroom(String roomno,String uname) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into rooms values(?,?)");
    ps.setString(1,roomno);
    ps.setString(2,uname);
    int i= ps.executeUpdate();
   
    if(i>0)
        return true;
    else
        return false;
    }
    
    public int bookingsdelete(String uname)
    {
        int st = 0;
         
    try (
        PreparedStatement ps = createConnection().prepareStatement("delete from bookings where uname=?")) {
      
      ps.setString(1, uname);
      st=ps.executeUpdate();
      
      //System.out.println("Record deleted successfully");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return st;
    }
    
    public int roomsdelete(String roomno)
    {
        int st = 0;
         
    try (
        PreparedStatement ps = createConnection().prepareStatement("delete from rooms where roomno=?")) {
      
      ps.setString(1, roomno);
      st=ps.executeUpdate();
      
      //System.out.println("Record deleted successfully");
    } catch (SQLException e) {
      e.printStackTrace(); 
    }
    return st;
    }
    
    public String getemail(String username){  
          String email="";
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select email from userdetails where username=?");  
            ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                email=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return email;  
    }
    
    
    public static List<userdetailsbean> getuserdetails(){  
        List<userdetailsbean> list=new ArrayList<userdetailsbean>();  

        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from userdetails");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                userdetailsbean e=new userdetailsbean();  
                e.setusername(rs.getString(1));  
                e.setfullname(rs.getString(2));  
                e.setemail(rs.getString(3));  
                e.setpassword(rs.getString(4));  
         
               list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    
    
    public int userdelete(String uname)
    {
        int st = 0;
         
    try (
        PreparedStatement ps = createConnection().prepareStatement("delete from userdetails where uname=?")) {
      
      ps.setString(1, uname);
      st=ps.executeUpdate();
      
      //System.out.println("Record deleted successfully");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return st;
    }
    
    
       public int staffdeleteone(String uname)
    {
        int st = 0;
         
    try (
        PreparedStatement ps = createConnection().prepareStatement("delete from grade01staff where uname=?")) {
      
      ps.setString(1, uname);
      st=ps.executeUpdate();
      
      //System.out.println("Record deleted successfully");
    } catch (SQLException e) {
      e.printStackTrace(); 
    }
    return st;
    }
       
         public int staffdeletetwo(String uname)
    {
        int st = 0;
         
    try (
        PreparedStatement ps = createConnection().prepareStatement("delete from grade02staff where uname=?")) {
      
      ps.setString(1, uname);
      st=ps.executeUpdate();
      
      //System.out.println("Record deleted successfully");
    } catch (SQLException e) {
      e.printStackTrace(); 
    }
    return st;
    }
    
    
  public boolean sendfeedback(String uname,String subject,String msg) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into complaints values(?,?,?)");
    ps.setString(1,uname);
    ps.setString(2,subject);
    ps.setString(3,msg);
    int i= ps.executeUpdate();
    
   
    if(i>0)
        return true;
    else
        return false;
    }  
    /*
   public static List<feedbackbean> getfeedbacks(){  
        List<feedbackbean> list=new ArrayList<feedbackbean>();  
          
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from complaints");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                feedbackbean e=new feedbackbean();  
                e.setusername(rs.getString(1));  
                e.setsubject(rs.getString(2));
                e.setmsg(rs.getString(3));
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    */
    public String G1empcount(){  
          String count="";
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select count(*) from grade01staff");  
            //ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                count=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return count;  
    }
    
    public String flightbookcount(){  
          String count="";
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select count(*) from bookflight");  
            //ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                count=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return count;  
    }
    
      public String usercount(){  
          String count="";
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select count(*) from userdetails");  
            //ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                count=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return count;  
    }
      
      public String G2empcount(){  
          String count="";
        try{  
            Connection con=dbconnect.createConnection();  
            PreparedStatement ps=con.prepareStatement("select count(*) from grade02staff");  
            //ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                count=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return count;  
    }
    
}
