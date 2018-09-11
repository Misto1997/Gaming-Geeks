<%-- 
    Document   : PasswordSetting
    Created on : Jun 16, 2018, 10:00:36 AM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>reset password</title>
        <%@ include file="Include_file.jsp" %>
          <link rel="Stylesheet" href="Dcss/PasswordSetting.css">
    </head>
    <body style="overflow-x: hidden; ">
        <div id="Middle">
            <form action="PasswordGenerate">
            <label id="t2" for="email" id="h">Enter Your Registered email id here</label>
            <input id="feild" type="text"  name="email" placeholder="Email id..">
            <input id="s1" type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
