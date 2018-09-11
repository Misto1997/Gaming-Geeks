/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rahul
 */
public class ReviewRedirect extends HttpServlet {

  
  /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          
            String gname=request.getParameter("gname");
             String gimage=request.getParameter("gameimage");
              String gid=request.getParameter("gameid");
             Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gaming geeks","root","");
           Statement ob=con.createStatement();
           String abc="SELECT * FROM reviews WHERE gameid='"+gid+"'" ;
//            String bcd="SELECT gameimage,gamename FROM gameinfo WHERE gamename='"+gname+"'" ;
          
           
           ResultSet rs=ob.executeQuery(abc);
//          ResultSet ss=ob.executeQuery(bcd);
          
            ArrayList<String> al=new ArrayList<String>();
            int c=0; String a="", b="";
//           if(ss.next())
//           {
//              a = rs.getString(1);
//                b = rs.getString(1);
//               
//           }
           
           while(rs.next())
           {
                c++;
                 al.add(rs.getString(1));
                  al.add(rs.getString(2));
                 al.add(rs.getString(3));
                al.add(rs.getString(4));
                al.add(rs.getString(5));
                al.add(rs.getString(6));
              
               
           }
//           al.add(ss.getString(7));
//                al.add(ss.getString(8));
           
           Iterator itr=al.iterator();
          
            RequestDispatcher rk;
            if(c>0)
            { RequestDispatcher rd=request.getRequestDispatcher("ReviewRedirect1.jsp");
              request.setAttribute("details",al);
            
              rd.forward(request, response);}
          
              
            else
            {
                 rk=request.getRequestDispatcher("ReviewRedirect1.jsp");
                 request.setAttribute("record","No Reviews Yet ! be the first one to comment");
                 rk.forward(request, response);
            }
        }
        catch(Exception ex)
        {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
