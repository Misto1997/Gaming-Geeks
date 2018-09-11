<%-- 
    Document   : NewsFound
    Created on : 28 Mar, 2018, 11:29:20 AM
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
        <title>news</title>
          <%@ include file="Include_file.jsp" %>
         <link rel="Stylesheet" href="Dcss/NewsFound.css">
    </head>
    <body  style="overflow-x: hidden; ">
        <div id="Middle">
             <% 
            
            List<String> all=new ArrayList<String>();
            all=(List<String>)request.getAttribute("details");
           
            Collections.reverse(all);
            /*String name=(String)request.getAttribute("name");
            String img=(String)request.getAttribute("image");
            String video=(String)request.getAttribute("vid");*/
            String rec=(String)request.getAttribute("record");
          
            if(all!=null)
            {
                Iterator itr=all.iterator();
           
                while(itr.hasNext())
                {
                    
                   String s,s1,s2,s3,s4;
                   s=(String)itr.next();
                   s1=(String)itr.next();
                   s2=(String)itr.next();
                   s3=(String)itr.next();
                   s4=(String)itr.next();
                   
                        
                   
             %>    
              
             <div id="NewsLines">
                 
              <h1 style=" font-size: 25px;text-transform: capitalize;font-family: comic sans ms; color: white;" ><a href="<%=s1%>"><%= s3%></a></h1>
              
             <img src="<%=s %>" style="max-width: 300px; max-height: 150px;">
             <div id="NewsDesc">
                 <p style="max-width: 800px"><%=s2 %></p><br>
             </div>
              <hr>
                   
        
               
         
         
                <%}}  %>
              </div>
            
        </div>
           
    </body>
</html>
