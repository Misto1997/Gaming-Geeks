<%-- 
    Document   : SearchedGame
    Created on : 16 Mar, 2018, 11:01:22 PM
    Author     : rahul
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ include file="Include_file.jsp" %>
         <link rel="Stylesheet" href="Dcss/SearchedGame.css">
         <title>Game</title>>
    </head>
    <body style="overflow-x: hidden; ">
        <div id="middle">
           <% 
            
            ArrayList<String> al1=new ArrayList<String>();
            al1=(ArrayList<String>)request.getAttribute("details");
            
            /*String name=(String)request.getAttribute("name");
            String img=(String)request.getAttribute("image");
            String video=(String)request.getAttribute("vid");*/
            String rec=(String)request.getAttribute("record");
            
            if(al1!=null)
            {
                Iterator itr=al1.iterator();
                 
                while(itr.hasNext())
                {
                    
                   String s,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11;
                   s=(String)itr.next();
                   s1=(String)itr.next();
                   s2=(String)itr.next();
                   s3=(String)itr.next();
                   s4=(String)itr.next();
                   s5=(String)itr.next();
                    s6=(String)itr.next();
                     s7=(String)itr.next();
                      s8=(String)itr.next();
                       s9=(String)itr.next();
                        s10=(String)itr.next();
                        s11=(String)itr.next();
                        
                   
             %>    
              <div id="GameInfo">
                  
                <h1 style="text-transform: capitalize;font-family: comic sans ms;font-size: 35px;color: lightgreen;text-align: center" ><%= s1%></h1><br>
                <div id="line"> <h id="Set">General info</h></div><br>
                <p id="Info">Initial Release Date:  <%=s7 %></p><br>
                  <p id="Info">Developer:  <%=s8 %></p><br>
                   <p id="Info">Engine:  <%=s9%></p><br>
                    <p id="Info">Designer:  <%=s10%></p><br>
                     <p id="Info">Platforms:  <%=s11 %></p><br>
            </div><br><br><br><br>
            <div id="line"> <h id="Set">Picture</h></div><br>
              <div id="GameImage">
                 <img src="<%=s2 %>" style="max-width: 800px; max-height: 400px;margin-left: 50px">
            </div><br><br><br><br>
            <div id="line"> <h id="Set">About Game</h></div><br>
             <div id="GameDetail">
                 <p style="font-family: comic sans ms;font-size: 17px;color: white"><%=s6 %></p><br>
            </div><br><br><br><br>
            <div id="line"> <h id="Set">Game Trailer</h></div><br>
                <div id="GameVideo">
                <iframe width="800" height="400" src="<%=s3 %>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            </div>
             
           <%}}  %>
 
           
           
            
            
            
           
            
        
        </div>
    </body>
</html>
