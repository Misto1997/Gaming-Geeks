<%-- 
    Document   : AdminPage
    Created on : Jun 18, 2018, 11:35:57 AM
    Author     : rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="img1.JPG"/>
        <title img src="images//img1.JPG">Gaming Geeks</title> 
        <%@ include file="Include_file.jsp" %>
       <link rel="Stylesheet" href="Dcss/AdminPage.css">
         
    </head>
    <body style="overflow-x: hidden; ">
        <div id="m4">
            <h id="h1">ADD NEWS</h>
            <form action="AdminPage">
              <p id="names"> News Id: <input id="txt1" type="text" name="newsid" placeholder="Enter News Id here.."/> </p> 
               <p id="names">News Heading: <input id="txt1" type="text" name="newsheading" placeholder="Enter News Heading here.."/> </p> 
                <p id="names"> News Description: <textarea  name="newsdesc" placeholder="Enter News Description here.." style="height:100px ;width: 500px;"></textarea> </p> <br>
                 <p id="names">News Link: <input id="txt1" type="text" name="newslink" placeholder="Enter News Link here.."/> </p> 
                  <p id="names">News Pic. address: <input id="txt1" type="text" name="newsimage" placeholder="Enter Address here.."/>  </p> 
                  <input id="s1" type="submit" value="submit"/>
                
            </form>
            
        </div>
    </body>
</html>
