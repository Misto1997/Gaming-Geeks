<%-- 
    Document   : SearchedOption
    Created on : 19 Mar, 2018, 10:48:46 AM
    Author     : rahul
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>game search</title>
        <%@ include file="Include_file.jsp" %>
         <link rel="Stylesheet" href="Dcss/SearchedOption.css">
    </head>
    <body  style="overflow-x: hidden; ">
        <div id="middle" style="position: absolute;">
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
             <form action="/ACM/SearchedResult">
             <div id="GameOption" style="">
                 
              <h1 style="text-transform: capitalize;font-family: comic sans ms; color: white;" ><%= s1%></h1>
              
             <img src="<%=s2 %>" style="max-width: 200px; max-height: 400px;">
             <div id="text" style="width: 880px;">
                 <p><%=s5 %></p><br>
             </div>
             <button type="submit" name="GameName" value="<%=s1%>" style="background-color: grey;  color:blue;cursor:pointer;width:150px;padding: 5px;margin-left:900px;">View Full Detail</button>
              </form>
              <hr>
             
            <%}}
           else
                out.print(rec);
            
        %>
 
           
            
        </div>
        </div>
    </body>
</html>
