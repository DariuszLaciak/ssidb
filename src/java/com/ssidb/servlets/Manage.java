/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ssidb.servlets;

import com.ssidb.dto.Offer;
import com.ssidb.dto.Profile;
import com.ssidb.dto.UserDTO;
import com.ssidb.helpers.HibernateUtil;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.jpa.HibernatePersistenceProvider;

/**
 *
 * @author Darek
 */
public class Manage extends HttpServlet {

    HttpSession s;
    String[] obj;
    Session sess;
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
        String action = request.getParameter("action");
        PrintWriter out = new PrintWriter(new OutputStreamWriter(response.getOutputStream(), "UTF8"), true);
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String response_msg = "";
        switch (action) {
            case "save_profile":
                obj = request.getParameterValues("form_data[]");
                for (String str : obj) {
                    
                }
                s = request.getSession();
                long user_id = (long) s.getAttribute("user_id");

                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                UserDTO user = (UserDTO) sess.load(UserDTO.class, user_id);
                user.getProfile().editProfile(Float.parseFloat(obj[0]), Float.parseFloat(obj[1]), Float.parseFloat(obj[2]), Float.parseFloat(obj[3]), Float.parseFloat(obj[4]), Float.parseFloat(obj[5]), Float.parseFloat(obj[6]), Float.parseFloat(obj[7]), Float.parseFloat(obj[8]), Float.parseFloat(obj[9]), Float.parseFloat(obj[10]), Float.parseFloat(obj[11]), Float.parseFloat(obj[12]), Float.parseFloat(obj[13]), Float.parseFloat(obj[14]), Float.parseFloat(obj[15]), Float.parseFloat(obj[16]), Float.parseFloat(obj[17]), Float.parseFloat(obj[18]), Float.parseFloat(obj[19]));
                try {
                    sess.update(user);
                } catch (HibernateException e) {
                    response_msg = "<h1>Blad Bazy danych<br /> proszę skontaktować się z administratorem</h1>";
                    out.println(response_msg);
                }

                sess.getTransaction().commit();
                s.setAttribute("user_data", user);
                response_msg = "<h1>Pomyślnie zedytowano współczynniki</h1><img src='correct-us.png' style='width: 300px;'/>";
                out.println(response_msg);
                break;
            case "search_fuzzy":
                obj = request.getParameterValues("form_data[]");
                Map<String,String> values = new HashMap<>();
                
                for (String str : obj) {
                    String[] qwer = str.split("=>");
                    values.put(qwer[0], qwer[1]);
                }
                s = request.getSession();
                
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                if(values.containsKey("price"))
                {
                    Query q1 = sess.createQuery("from Profile where user_id=:user");
                    q1.setParameter("user", s.getAttribute("user_id"));
                    List<Profile> p = q1.list();
                    System.out.println(p.get(0).getPrice_b());
                    Query q = sess.getNamedQuery("getFunc");
                    q.setParameter("a", p.get(0).getPrice_a());
                    q.setParameter("b", p.get(0).getPrice_b());
                    List<Offer> of = q.list();
                    String reply = "<ul>";
                    for(Offer o : of){
                        reply += "<li>"+o+"</li>";
                    }
                    reply += "</ul>";
                    out.println(reply);
                }
                sess.getTransaction().commit();
                break;
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
