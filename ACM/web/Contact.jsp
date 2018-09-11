<%-- 
    Document   : Contact
    Created on : 2 Apr, 2018, 12:43:48 PM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact</title>
        <%@ include file="Include_file.jsp" %>
       <link rel="Stylesheet" href="Dcss/Contact.css">
    </head>
    <body style="overflow-x: hidden; ">
        <div id='m7'>
            <div id="mtr">
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
            </div>
        </div>
    </body>
</html>
