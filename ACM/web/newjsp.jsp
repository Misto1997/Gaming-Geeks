<%-- 
    Document   : newjsp
    Created on : Jul 11, 2018, 6:26:01 PM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Contact">
                    <br>
                <h1 id="txt">Enter your email id here.</h1>
                <input type="email" placeholder="Enter Email" name="email" required>
                
                <br>
                <h1 id="txt">Subject</h1>
                <input type="text" placeholder="Subject..." name="subject" required>
                 
                <br><br>
                 <h1 id="txt">Detail's about Problem</h1>
                 <br>
                 <textarea id="dtxt" name="message" placeholder="Explain us in detail for convinience..."></textarea>
                 <br><br>
                 <input id="sb" type="submit" value="Submit">
                </form>
    </body>
</html>
