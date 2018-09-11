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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 *
 * @author rahul
 */
public class ReviewComment extends HttpServlet {

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            
    throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
       
       try 
        {
            
            String name = request.getParameter("review");
            String uname = request.getParameter("Uname");
            String email = request.getParameter("emailid");
            String country = request.getParameter("country");
            Date fromDate=null;
           
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gaming geeks", "root", "");
                 
                PreparedStatement ps = con.prepareStatement("insert into reviews value(?,?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, name);
                ps.setString(3, name);
                ps.setString(4, name);
                ps.setInt(5, 5);
                ps.setTimestamp(6,new java.sql.Timestamp(fromDate.getTime()));
              
               
                int i = ps.executeUpdate();
                if (i != 0)
                {
                  
                 //response.sendRedirect("FeedbackResponse.jsp?name");
                    request.setAttribute("name", name);
                    RequestDispatcher rd=request.getRequestDispatcher("ReviewRedirect1.jsp");
                    rd.forward(request, response);
                     
                } 
                else
                {
                    response.sendRedirect("ReviewRedirect1.jsp");
                    out.println("fail");
                }
        } 
       catch (Exception e)
        {
                out.println("fail=====");
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
