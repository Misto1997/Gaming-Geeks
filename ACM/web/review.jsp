<%-- 
    Document   : review
    Created on : 4 Apr, 2018, 10:12:08 PM
    Author     : rahul
--%>


<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>reviews</title>
        <%@ include file="Include_file.jsp" %>
       <link rel="Stylesheet" href="Dcss/review.css">
    </head>
    <body style="overflow-x: hidden; ">
        <%
            if(session.getAttribute("name")==null)
            {
              out.println("<script type=\"text/javascript\">");
                
              out.println("location='HomePage.jsp';");
              out.println("alert('Login Required');");
              out.println("</script>");              
            }
        else
         {
        %>
        
        <div id="m8">
            <div id="selector">
            <form action="review">
                <div id="btn">
                <button id="btndesign">GO</button>
                </div>
                <div id="gameselect">
        <select id="slct" name="GameName">
                        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gaming geeks", "root", "");
                                Statement ob = con.createStatement();
                                String abc = "SELECT `gamename` from `gameinfo`";
                                ResultSet rs = ob.executeQuery(abc);
                                String s = "";
                                while (rs.next()) {
                                    s = rs.getString(1);
                        %>

                        <option value="<%=s%>"><%=s%></option>  

                        <%}
                            } catch (Exception e) {
                            }
                        %>
        </select>
                     </div>
                
       </form>
            </div>
        <div id="blw">
            <h1 style="color: whitesmoke;">TOP REVIEWS</h1>
            <hr style="width:500px; height:1px;border:none; background-color:white;">
            <div id="r1">
                
                <a href="review?GameName=counter-strike global offensive" >
                       
                   <img src="GameImages/counter-strike global offensive.jpeg" id="ImgStl"/>                                                                     
               </a>
                   <a href="review?GameName=counter-strike global offensive" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">counter-strike global offensive</a>
                  
            </div>
            <div id="r1">
                
                <a href="review?GameName=deus ex" >
                       
                   <img src="GameImages/deus ex.jpg" id="ImgStl"/>                                                                     
               </a>
                   <a href="review?GameName=deus ex" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">deus ex</a>
                  
            </div>
            <div id="r1">
                
                <a href="review?GameName=asphalt 8" >
                       
                   <img src="GameImages/asphalt 8.jpg" id="ImgStl"/>                                                                     
               </a>
                   <a href="review?GameName=asphalt 8" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">asphalt 8</a>
                  
            </div>
            <div id="r1">
                
                <a href="review?GameName=assassins creed rogue" >
                       
                   <img src="GameImages/assassin's creed rogue.jpg" id="ImgStl"/>                                                                     
               </a>
                   <a href="review?GameName=assassins creed rogue" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">assassin's creed rogue</a>
                  
            </div>
            <div id="r1">
                
                <a href="review?GameName=batman arkham city" >
                       
                   <img src="GameImages/batman arkham city.jpg" id="ImgStl"/>                                                                     
               </a>
                   <a href="review?GameName=batman arkham city" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">batman arkham city</a>
                  
            </div>
            <div id="r1">
                
                <a href="review?GameName=call of duty modern warfare" >
                       
                   <img src="GameImages/call of duty modern warfare.jpg" id="ImgStl"/>                                                                     
               </a>
                   <a href="review?GameName=call of duty modern warfare" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">call of duty modern warfare</a>
                  
            </div>
            <div id="r1">
                
                <a href="review?GameName=battlefield 3" >
                       
                   <img src="GameImages/battlefield 3.jpg" id="ImgStl"/>                                                                     
               </a>
                   <a href="review?GameName=battlefield 3" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">battlefield 3</a>
                  
            </div>
            <div id="r1">
                
                <a href="review?GameName=paladins" >
                       
                   <img src="GameImages/paladins.png" id="ImgStl"/>                                                                     
               </a>
                   <a href="review?GameName=paladins" style="position: absolute;top: 250px; left: 20px; font-size: 25px;">paladins</a>
                  
            </div>
            
            
        </div>
        </div>
        <%}%>
    </body>
</html>
