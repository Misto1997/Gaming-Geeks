<%-- 
    Document   : ReviewRedirect1
    Created on : 7 Apr, 2018, 11:21:35 AM
    Author     : rahul
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@ include file="Include_file.jsp" %>
       <link rel="Stylesheet" href="Dcss/ReviewRedirect1.css">
    </head>
    <body  style="overflow-x: hidden; ">
        <div id="m9">
         <div style="margin-top: 450px; background-color: rgb(27,37,49)">  
        <% 
            String s,s1,s2,s3="",s4,s5,a="",b="";
            ArrayList<String> al1=new ArrayList<String>();
            al1=(ArrayList<String>)request.getAttribute("details");
            
           
            String rec=(String)request.getAttribute("record");
            
            if(al1!=null)
            {
                Iterator itr=al1.iterator();
               
                
                while(itr.hasNext())
                {
                    
                   
                   s=(String)itr.next();
                   s1=(String)itr.next();
                   s2=(String)itr.next();
                   s3=(String)itr.next();
                   s4=(String)itr.next();
                   s5=(String)itr.next();
                   
                    
                   
             %>  
             <div id="cc">
                 <img src="images/img1.jpg" style="width:30px;height: 30px;">
             <h style="color:whitesmoke;font-size: 20px;"><%=s2 %></h>
             
             <h style="float:right;color: whitesmoke"><%=s5 %></h>
             <br><br>
             <h style="color:whitesmoke">Rating:-<%=s4%>/5</h>
             <br><br>
             <hr style=" height:1px;  border:none;   background-color:lightskyblue;">                         
             <h style="color:lightblue; margin-left: 20px; margin-right: 20px"><%=s1 %></h>
             
             
             
            
             </div>
             <hr>
             
             
            <%}}
           else
                out.print(rec);
            
        %>
        </div>
        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gaming geeks", "root", "");
                                Statement ob = con.createStatement();
                                String abc="SELECT gameimage,gamename FROM gameinfo WHERE gameid='"+s3+"' " ;
                                ResultSet rs = ob.executeQuery(abc);
                                
                                if (rs.next()) {
                                    a = rs.getString(1);
                                    b = rs.getString(2);
                                    
                        %>
                        <div id="titlee" >
                        <img src="<%=a %>" style="width: 1100px;height: 350px;">
                        <center style="color: whitesmoke; font-size: 30px; text-transform: capitalize"><%=b %></center>
                        <hr>
                        </div>
                        
                        
                        <%}
                            } catch (Exception e) {
                            }
                        %>
                         
                      <div id="cmnt">
                          <form action="ReviewComment">
                            <textarea style="width: 800px;height: 150px;margin-left: 30px;font-size: 15px;" placeholder="Add your review.." name="review"></textarea><br>
                            <h style="color: whitesmoke;margin-left: 30px">Rating:<input type="number" min="1" max="5" name="rating" id="rating"></h><br><br>
                            <input type="submit" id="sbbtn" value="review" style="background-color: grey;font-size: 20px;padding:0;border: solid lightcyan 1px;margin-left: 30px">
                          </form>
                      </div>
           
            
        </div>
        
    </body>
</html>
