<%-- 
    Document   : result
    Created on : Apr 3, 2018, 10:52:37 PM
    Author     : Rohit
--%>

<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <%@ include file="Include_file.jsp" %>

        <style>

            #middle
            {

                background-color:rgb(27,37,49);


                width: 100%;
                margin-left: 250px;
                position: absolute;
                z-index: -1;
                margin-top: 100px;
                
                 

            }

            #back
            {
                background-color:rgb(27,37,49);
                margin: auto;
                width: 1100px;
                height: 1200px;

            }
            #chboxes
            {
                width:150px;
                height:150px;
                float: left;
                margin-left: 210px;
                margin-right: 60px; 
                margin-top: 50px;
                font-family: cursive;
                text-align: center;
                font-size: 18px;
                color: whitesmoke;
            }

        </style>

    </head>
    <body style="overflow-x: hidden; ">
        <div id= "middle" >
            <div id= "back" >
                <pre>   <br> <br>       <span style="font-family: cursive;color:whitesmoke;font-size: 25px">        Minimum Requirement specs.   </span>             <span style="font-family: cursive;color:whitesmoke;font-size: 25px">     Your specs.</span></pre>
                <% 
                    String chip = request.getParameter("Processor");
                    int ram = Integer.parseInt(request.getParameter("RAM"));
                    String vc = request.getParameter("vc");
                    int dx = Integer.parseInt(request.getParameter("Directx"));
                    String gamen = request.getParameter("games");

                    int pbenchmrk = 0, gbenchmark = 0, ram1 = 0, dx1 = 0;
                    int hdp = 0, hdv = 0;
                    String color = "";
                    String minp = "", minvc = "";

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acm", "root", "");
                        Statement ob = con.createStatement();
                        String abc = "SELECT  * from  `gameinfo` where `gamename`='" + gamen + "'";
                        ResultSet rs = ob.executeQuery(abc);
                        while (rs.next()) {
                            pbenchmrk = Integer.parseInt(rs.getString("beenchmark"));

                            gbenchmark = Integer.parseInt(rs.getString("benchmarkvc"));

                            ram1 = Integer.parseInt(rs.getString("Ram"));

                            dx1 = Integer.parseInt(rs.getString("Directx"));

                            minp = rs.getString("Processor");

                            minvc = rs.getString("Graphiccard");

                        }
                        abc = "SELECT  `benchmark` from `specification` where `Processor`='" + chip + "'";
                        rs = ob.executeQuery(abc);
                        while (rs.next()) {
                            hdp = Integer.parseInt(rs.getString(1));
                        }

                        abc = "SELECT  `benchmark` from `graphiccard` where `card`='" + vc + "'";
                        rs = ob.executeQuery(abc);
                        while (rs.next()) {
                            hdv = Integer.parseInt(rs.getString(1));
                        }
                        String b = "false";

                        if (pbenchmrk <= hdp) {
                            color = "green";

                        } else {
                            color = "red";
                        }


                %>

                <div>
                   <div style="background-color: blue" id="chboxes"><label style="color:lightsalmon;font-size: 22px">Processor</label><br><br><label> <%= minp%></label> </div>
                     <div style="background-color:<%=color%> " id="chboxes"><label style="color:lightskyblue;font-size: 22px">Processor</label><br><br><label><%= chip%>  </label>

                    </div>
                <%    if (ram >= ram1) {
                        color = "green";

                    } else {
                        color = "red";
                    }


                %>

                <div style="background-color: blue" id="chboxes"><label style="color:lightsalmon;font-size: 22px">RAM(GB)</label><br><br><label> <%= ram1%></label> </div>
                 
                 <div style="background-color:<%=color%> " id="chboxes"><label style="color:lightskyblue;font-size: 22px">RAM(GB)</label><br><br><label><%= ram%>  </label>

                </div>
                <%    if (dx >= dx1) {
                        color = "green";

                    } else {
                        color = "red";
                    }


                %>

                <div style="background-color: blue" id="chboxes"> <label style="color:lightsalmon;font-size: 22px">DirectX<br>Version</label><br><br><%= dx1%> </div>
                
                <div style="background-color:<%=color%> " id="chboxes"><label style="color:lightskyblue;font-size: 22px">DirectX<br>Version</label><br><br><label><%= dx%>  </label>

                </div>


                <%    if (hdv >= gbenchmark) {
                        color = "green";

                    } else {
                        color = "red";
                    }


                %>

                <div style="background-color: blue" id="chboxes"><label style="color:lightsalmon;font-size: 22px">Graphic card</label><br> <%= minvc%> </div>
                <div style="background-color:<%=color%> " id="chboxes"><label style="color:lightskyblue;font-size: 22px">Graphic card</label><br><br><label><%= vc%>  </label>

                </div>

                <%   } catch (Exception ex) {
                    }

                %>

            </div></div>
    </body>
</html>
