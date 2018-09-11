<%-- 
    Document   : searchcnt
    Created on : Mar 5, 2018, 11:35:04 PM
    Author     : Rohit
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
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
                   String s,s1,s2,s3,s4,s5;
                   s=(String)itr.next();
                   s1=(String)itr.next();
                   s2=(String)itr.next();
                   s3=(String)itr.next();
                   s4=(String)itr.next();
                   s5=(String)itr.next();
                   
             %>    
            
              <h1><%= s1%></h1>
             <img src="<%=s2 %>">
               <link src="<%=s3 %>">csdc
             <h2><%=s4 %></h2><br>
              <h2><%=s5 %></h2><br>
             
            <%}}
           else
                out.print(rec);
            
        %>
        
    </body>
</html>
