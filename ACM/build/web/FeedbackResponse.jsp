<%-- 
    Document   : FeedbackResponse
    Created on : 1 Apr, 2018, 8:10:36 PM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>feedback response</title>
         <%@ include file="Include_file.jsp" %>
       <link rel="Stylesheet" href="Dcss/feedbackRes.css">
    </head>
    <body style="overflow-x: hidden; ">
       
        <div id="m3">
            <div id="res">
               <%String name=(String)request.getAttribute("name");%>
              <h id="text">Thank You! For Your Valuable Feedback <%=name%></h>
              <br><br>
              <h1>We Will Try To Improve More With Your Response </h1>
              <br>
              <h2 style="color: lightcyan">Regards from</h2>
              <br>
              <img src="images/GameLogo2.JPG" >
              <br><br>
              <h3 style="color: crimson">!HAPPY GAMING!</h3>
            </div>
        </div>
    </body>
</html>
