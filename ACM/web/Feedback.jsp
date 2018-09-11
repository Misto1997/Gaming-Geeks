<%-- 
    Document   : Feedback
    Created on : 1 Apr, 2018, 7:36:41 PM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>feedback</title>
        <%@ include file="Include_file.jsp" %>
       <link rel="Stylesheet" href="Dcss/feedback.css">
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
        <div id="m2">
            <div id="inside">
        <div class="container">
  <form action="FeedBack">
    <label for="name" id="h">Full Name</label>
    <input type="text"  name="name" placeholder="Your name..">
    
    <label for="Uname" id="h">UserName</label>
    <input type="text"  name="Uname" placeholder="UserName..">
    
    <label for="emailid" id="h">Email Id</label>
    <input type="text"  name="emailid" placeholder="Email ID..">

    <label for="country" id="h">Country</label>
    <select id="country" name="country">
         <option value="aus">AUSTRAILIA</option>
            <option value="afg">AFGANISTAN</option>
            <option value="chn">CHINA</option>
            <option value="can">Canada</option>
            <option value="dub">DUBAI</option>
            <option value="nep">NEPAL</option>            
            <option value="ind">INDIA</option>
           <option value="pak">PAKISTAN</option>
           <option value="uae">UAE</option>
           <option value="uk">UK</option>
           <option value="usa">USA</option>       
    </select>

    <label for="subject" id="h">Your Valuable FeedBack</label>
    <textarea id="detail" name="detail" placeholder="Write something.." style="height:200px"></textarea>

    <input id="sub" type="submit" value="Submit">
  </form>
</div>
                </div>
</div>
        <%}%>
    </body>
</html>
