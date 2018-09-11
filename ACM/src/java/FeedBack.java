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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author rahul
 */
public class FeedBack extends HttpServlet {

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            
    throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
       
       try 
        {
            
            String name = request.getParameter("name");
            String uname = request.getParameter("Uname");
            String email = request.getParameter("emailid");
            String country = request.getParameter("country");
            String text = request.getParameter("detail");
           
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gaming geeks", "root", "");
                 
                PreparedStatement ps = con.prepareStatement("insert into feedback value(?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, uname);
                ps.setString(3, email);
                ps.setString(4, country);
                ps.setString(5, text);
              
               
                int i = ps.executeUpdate();
                if (i != 0)
                {
                  
                 //response.sendRedirect("FeedbackResponse.jsp?name");
                    request.setAttribute("name", name);
                    RequestDispatcher rd=request.getRequestDispatcher("FeedbackResponse.jsp");
                    rd.forward(request, response);
                     
                } 
                else
                {
                    response.sendRedirect("Include_file.jsp");
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
