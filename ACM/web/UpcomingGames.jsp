<%-- 
    Document   : UpcomingGames
    Created on : 31 Mar, 2018, 10:31:52 AM
    Author     : rahul
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>upcoming games</title>
        <%@ include file="Include_file.jsp" %>
       <link rel="Stylesheet" href="Dcss/UpcomingGames.css">
    </head>
    <body style="overflow-x: hidden; ">
       <div id="M1">
             <% 
            
            List<String> all=new ArrayList<String>();
            all=(List<String>)request.getAttribute("details");
           
            
            /*String name=(String)request.getAttribute("name");
            String img=(String)request.getAttribute("image");
            String video=(String)request.getAttribute("vid");*/
            String rec=(String)request.getAttribute("record");
          
            if(all!=null)
            {
                Iterator itr=all.iterator();
           
                while(itr.hasNext())
                {
                    
                   String s1,s2,s3,s4,s5;
                   s1=(String)itr.next();
                   s2=(String)itr.next();
                   s3=(String)itr.next();
                   s4=(String)itr.next();
                   s5=(String)itr.next();
                   
                        
                   
             %>    
              
             <div id="n1">
                 
              <h1 style="font-family: comic sans ms;color:white;"><%= s1%></h1>
              <hr style="width: 700px">  
              
             <img src="<%=s2%>" style="max-width: 650px; max-height: 365px; border:solid whitesmoke">
            <p style="font-family: comic sans ms;color:white; font-size: 21px;">PLATFORM:<%=s3 %></p><br>
            <p style="font-family: comic sans ms;color:white; font-size: 21px;">RELEASE DATE:<%=s4%></p><br>
            <hr style="width: 700px">
                 <p style="max-width: 700px;font-family: comic sans ms;color:lightcyan; font-size: 17px;"><%=s5 %></p><br>
              
                     <hr style="width: 1100px;">
                <%}}  %>
               
              </div>
              
               
            
        </div>
              
    </body>
</html>
