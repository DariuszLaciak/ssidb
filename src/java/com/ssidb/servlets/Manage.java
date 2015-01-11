package com.ssidb.servlets;

import com.ssidb.dto.Offer;
import com.ssidb.dto.UserDTO;
import com.ssidb.helpers.HibernateUtil;
import com.ssidb.helpers.Util;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

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
        String response_msg;
        s = request.getSession();
        switch (action) {
            case "save_profile":
                obj = request.getParameterValues("form_data[]");
                
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
            case "display_offers":
                s = request.getSession();
                user_id = (long) s.getAttribute("user_id");

                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                user = (UserDTO) sess.load(UserDTO.class, user_id);
                List<Offer> current_offers = new ArrayList(user.getOffers());
                if (!current_offers.isEmpty()) {
                        out.println(Util.createResultTable(current_offers));
                } else {
                        out.println("<H1>Jeszcze nie dodałeś żadnej oferty!</H1>");
                }
                sess.getTransaction().commit();
                break;
            case "look_offers":
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                
                List<Offer> look_offers = sess.createQuery("from Offer").list();
                if (!look_offers.isEmpty()) {
                        out.println(Util.createResultTable(look_offers));
                } else {
                        out.println("<H1>Brak ofert w bazie</H1>");
                }
                sess.getTransaction().commit();
                break;
            case "search_fuzzy":
                obj = request.getParameterValues("form_data[]");
                Map<String, String> values = new HashMap<>();

                double treshold = 0.0;
                if (obj != null) {
                    for (String str : obj) {
                        String[] qwer = str.split("=>");
                        if (qwer[0].equals("treshold")) {
                            treshold = Double.parseDouble(qwer[1]);
                        } else {
                            values.put(qwer[0], qwer[1]);
                        }
                    }
                    s = request.getSession();

                    Map<Long, Offer> results = new HashMap<>();
                    List<Offer> tmp;

                    for (Entry<String, String> entry : values.entrySet()) {
                        sess = HibernateUtil.getSessionFactory().getCurrentSession();
                        sess.beginTransaction();
                        Query q = sess.getNamedQuery("fuzzy");
                        q.setParameter("id", s.getAttribute("user_id"));
                        q.setParameter("cecha", entry.getKey());
                        q.setParameter("typ", entry.getValue());
                        q.setParameter("treshold", treshold);
                        tmp = q.list();
                        sess.getTransaction().commit();
                        results = Util.getJoinOnAllResults(results, tmp);
                    }

                    List<Offer> offers = new ArrayList<>();
                    for (Entry<Long, Offer> ent : results.entrySet()) {
                        offers.add(ent.getValue());
                    }

                    //sorting by mi
                    Collections.sort(offers, new Comparator<Offer>() {
                        public int compare(Offer c1, Offer c2) {
                            if (c1.getMI() > c2.getMI()) {
                                return -1;
                            }
                            if (c1.getMI() < c2.getMI()) {
                                return 1;
                            }
                            return 0;
                        }
                    });

                    if (!offers.isEmpty()) {
                        out.println(Util.createResultTable(offers));
                    } else {
                        out.println("<H1>Brak mieszkań o podanych parametrach</H1>");
                    }
                } else {
                    out.println("<H1>Wybierz parametry wyszukiwania</H1>");
                }
                break;
            case "search_simple":
                obj = request.getParameterValues("form_data[]");
                Map<String, Integer> form = new HashMap<>();
                String reply = "";
                if(obj != null) {
                for (String str : obj) {
                    String[] qwer = str.split("=>");
                    form.put(qwer[0], Integer.parseInt(qwer[1]));
                }
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                
                List<Offer> offers = sess.createQuery("from Offer where "+Util.createWhereToSimple(form)).list();
                
                sess.getTransaction().commit();
                
                
                reply += Util.createResultTable(offers);
                }
                else {
                    reply +="<h1>Nie podano wspolczynnikow</h1>";
                }
                String url = request.getHeader("Referer");
                String page = url.substring(url.lastIndexOf("/")+1,url.length());
                if(page.equals("searchSimple.jsp")){
                    reply += "<p class='back'> <a href=\"searchSimple.jsp\">Wyszukaj jeszcze raz</a></p>";
                }
                else
                    reply += "<p class='back'> <a onclick=\"$('#search_not_fuzzy').click();\">Wyszukaj jeszcze raz</a></p>";
                out.println(reply);
                break;
            case "edit_dane":
                obj = request.getParameterValues("form_data[]");
                Map<String, String> dane = new HashMap<>();
                String reply_dane = "";
                UserDTO user_edit = (UserDTO)s.getAttribute("user_data");
                for (String str : obj) {
                    String[] qwer = str.split("=>");
                    dane.put(qwer[0], qwer[1]);
                }
                String new_password = user_edit.getPassword();
                String new_email = user_edit.getEmail();
                String new_phone = user_edit.getPhone();
                String new_address = user_edit.getAddress();
                
                if(!dane.containsKey("old_password")){
                    reply_dane = "<h1>Prosze podac stare haslo</h1>";
                }
                else if(!dane.get("old_password").equals(user_edit.getPassword())){
                    reply_dane = "<h1>Nieporpawne haslo</h1>";
                }
                else{
                    if(dane.containsKey("new_password")){
                        if(!dane.containsKey("retypedPassword")){
                            reply_dane = "<h1>Brakujace pole - powtorzone haslo</h1>";
                        }
                        else if(!dane.get("new_password").equals(dane.get("retyped_password"))){
                            reply_dane = "<h1>Nowe haslo i powtorzone nie sa takie same</h1>";
                        }
                        else {
                            new_password = dane.get("new_password");
                        }
                    }
                    if(dane.containsKey("email")){
                        new_email = dane.get("email");
                    }
                    if(dane.containsKey("phone")){
                        new_phone = dane.get("phone");
                    }
                    if(dane.containsKey("address")){
                        new_address = dane.get("address");
                    }
                    user_edit.editUser(new_password, new_address, new_phone, new_email);
                    sess = HibernateUtil.getSessionFactory().getCurrentSession();
                    sess.beginTransaction();
                    sess.update(user_edit);
                    sess.getTransaction().commit();
                    reply_dane = "<h1>Zmieniono dane</h1><img src='correct-us.png' style='width: 300px;'/>";
                }
                reply_dane += "<p class='back'> <a onclick=\"$('#edit_dane').click();\" >Wroc</a></p>";
                out.println(reply_dane);
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
