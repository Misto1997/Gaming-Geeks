<%-- 
    Document   : Check_Configuration
    Created on : 13 Mar, 2018, 12:13:27 PM
    Author     : rahul
--%>

<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="img1.JPG"/>
        <title img src="images//img1.JPG">check</title> 
         <%@ include file="Include_file.jsp" %>
        <link rel="Stylesheet" href="Dcss/Check_Configuration1.css">
<!--        <link rel="stylesheet" href="Dcss/swc.css" />-->
    </head>
    <body style="overflow-x: hidden; ">
      
        <%
           

                String b = (String) request.getAttribute("faisla");
                if (b != null) {
                   
                    if(b.equals("true")){%>
                        <div id="boxes">
<div style="top: 50%; left: 50%; display: none;" id="dialog" class="window"> 
<div id="san">
<a href="#" class="close agree"><img src="images/close-icon.png" width="25" style="float:right; margin-right: -25px; margin-top: -20px;"></a>
<img src="images/a.png" width="440">
</div>
</div>
<div style="width: 2478px; font-size: 32pt; color:white; height: 1202px; display: none; opacity: 0.4;" id="mask"></div>
</div>
<script src="JavaScript_Files/popup1.js"></script> 
<script src="JavaScript_Files/swc.js"></script>
                    
                       <%}
                    
                    if(b.equals("false"))
                    {%>
                     
                    <div id="boxes">
<div style="top: 50%; left: 50%; display: none;" id="dialog" class="window"> 
<div id="san">
<a href="#" class="close agree"><img src="images/close-icon.png" width="25" style="float:right; margin-right: -25px; margin-top: -20px;"></a>
<img src="images/b.png" width="440">
</div>
</div>
<div style="width: 2478px; font-size: 32pt; color:white; height: 1202px; display: none; opacity: 0.4;" id="mask"></div>
</div>
<script src="JavaScript_Files/popup1.js"></script> 
<script src="JavaScript_Files/swc.js"></script>
                    
                   <% }
                }
             
           
            %>
                    

        
        <%@ include file="Include_file.jsp" %>
        <div id="middle">
            <p id="title">Select your System's correct details to check Compatibility</p>
            <div id="lists" style="background-color:rgb(27,37,49);">
                
                 
                <form action="result.jsp">

                    <p id="ListName">Select Game</p>

                    <!--<input type="text" list="cars" style="width:400px; height: 40px;background-color: white" name="games"/>-->
                    <!--<datalist id="cars" >-->
                        <select id="DropDown" style="color: black; width: 400px" name="games">
                        <%
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acm", "root", "");
                                Statement ob = con.createStatement();
                                String abc = "SELECT `Gamename` from `gameinfo`";
                                ResultSet rs = ob.executeQuery(abc);
                                String s = "";
                                while (rs.next()) {
                                    s = rs.getString(1);
                        %>

                        <option value="<%=s%>"><%= s%></option>  

                        <%}
                            } catch (Exception e) {
                            }
                        %>
                        </select>
                        
                    <!--</datalist>-->
                    <p id="ListName">Processor</p>
                    <select id="DropDown" name="Processor">
                        <option value="i3">i3</option>
                        <option value="i5">i5</option>
                        <option value="AMD A6">AMD A6</option>
                        <option value="AMD A10">AMD A10</option>
                        <option value="AMD A10">i7</option>
                    </select>
                    <br><br>
                    <p id="ListName">RAM</p>
                    <select id="DropDown" name="RAM">
                        <option value="2">2</option>
                        <option value="4">4</option>
                        <option value="6">6</option>
                        <option value="8">8</option>
                    </select>
                    <br><br>
                    <p id="ListName">Operating System</p>
                    <select id="DropDown" name="os">
                        <option value="volvo">Win 7</option>
                        <option value="saab">Win 10</option>
                        <option value="fiat">Win 8</option>
                        <option value="audi">Mac os</option>
                    </select>
                    <br><br>
                    <p id="ListName">Direct X</p>
                    <select id="DropDown" name="Directx">
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                    <br><br>
                    <p id="ListName">Video Card</p>
                    <select id="DropDown" name="vc">
                        <option value="Nvidia gtx 940">Nvidia gtx 940</option>
                        <option value="Nvidia gtx 1050">Nvidia gtx 1050</option>
                        <option value="Nvidia gtx 1080">Nvidia gtx 1080</option>
                        <option value="Radeon rx400">Radeon rx400</option>
                    </select>
                    <br><br>
                    <span style="font-family: comic sans ms;color: white; font-size: 20px;">FREE Disk Space </span><input  style="width:245px;height: 15px;"type="number" id="DropDown" required>              
                    <!--                  <p id="ListName">Free Disk Space</p>
                                   <select id="DropDown" name="fds">
                        <option value="volvo">Volvo</option>
                        <option value="saab">Saab</option>
                        <option value="fiat">Fiat</option>
                        <option value="audi">Audi</option>
                      </select>-->
                    <br><br>


                    <input type="submit" value="Check">
                </form>
            </div>
    </body>
</html>
