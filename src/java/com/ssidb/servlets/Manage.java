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
                //user = (UserDTO) sess.load(UserDTO.class, user_id);
                List<Offer> current_offers = sess.createQuery("from Offer as o where o.user.id=:id").setLong("id", user_id).list();
                if (!current_offers.isEmpty()) {
                        out.println(Util.createResultTable(current_offers,false));
                } else {
                        out.println("<H1>Jeszcze nie dodałeś żadnej oferty!</H1>");
                }
                sess.getTransaction().commit();
                break;
            case "manage_users":
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                List<UserDTO> users = sess.createQuery("from UserDTO").list();
                if(users.isEmpty())
                    out.println("<H1>Brak użytkowników w bazie.</H1>");
                else
                    out.println(Util.displayUsers(users));
                sess.getTransaction().commit();
                break;
            case "edit_user_form":
                user_id = Long.parseLong(request.getParameter("id"));
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                user = (UserDTO)sess.get(UserDTO.class, user_id);
                //TODO edycja użytkownika ( w osobnym oknie?)
                Map<String,String> params = new HashMap<>();
                params.put("id", Long.toString(user.getId()));
                params.put("login", user.getLogin());
                params.put("adres", user.getAddress());
                params.put("e-mail", user.getEmail());
                params.put("telefon", user.getPhone());
                params.put("uprawnienia", user.getType());
                System.out.println("Tuż przed createFormEditUser");
                out.println(Util.createFormEditUser(params));
                sess.getTransaction().commit();
                System.out.println("Tuż po createFormEditUser");
                break;
            case "confirm_edit_user":
                try{
                obj = request.getParameterValues("form_data[]");
                obj.toString();
                }
                catch(NullPointerException e){
                    out.println(2);
                    return;
                }
                Map<String, String> user_dane = new HashMap<>();
                for (String str : obj) {
                    String[] qwer = str.split("=>");
                    user_dane.put(qwer[0], qwer[1]);
                }
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                UserDTO user_edit = (UserDTO)sess.get(UserDTO.class, Long.parseLong(request.getParameter("id")));
                try{
                    user_edit.setLogin(user_dane.get("login"));
                    user_edit.setAddress(user_dane.get("adres"));
                    user_edit.setEmail(user_dane.get("e-mail"));
                    user_edit.setPhone(user_dane.get("telefon"));
                    user_edit.setType(user_dane.get("uprawnienia"));
                }
                catch(NumberFormatException e){
                    out.println(0);
                    sess.getTransaction().rollback();
                    return;
                }
                sess.update(user_edit);
                sess.getTransaction().commit();
                out.println(1);
                break;
            case "remove_user":
                String id_user = request.getParameter("id");
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                //delete all dependencies
                String query = "delete from Profile where USER_ID = " + id_user;
                sess.beginTransaction();
                sess.createQuery(query).executeUpdate();
                query = "delete from Offer where IDUSER = " + id_user;
                sess.createQuery(query).executeUpdate();
                //finally delete user
                query = "delete from UserDTO where ID = " + id_user;
                sess.createQuery(query).executeUpdate();
                sess.getTransaction().commit();
                out.println("<H1>Użytkownik o id = " + id_user + " został usunięty z bazy danych.</H1>");
                break;
            case "reset_user_password":
                user_id = Long.parseLong(request.getParameter("id"));
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                user = (UserDTO)sess.get(UserDTO.class, user_id);
                String user_login = user.getLogin();
                String user_email = user.getEmail();
                String newPass = Util.generateRandomString(8);
                user.setPassword(newPass);
                sess.getTransaction().commit();
                //TODO wysyłanie maila z nowym hasłem na adres użytkownika
                out.println("<H1>Użytkownikowi " + user_login + " zresetowano hasło!<br />Tymczasowe hasło " + newPass + " zostało wysłane na adres " + user_email + "</H1>");
                break;
            case "look_offers":
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                List<Offer> look_offers = sess.createQuery("from Offer").list();
                if (!look_offers.isEmpty()) {
                        out.println(Util.createResultTable(look_offers,false));
                } else {
                        out.println("<H1>Brak ofert w bazie.</H1>");
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
                        out.println(Util.createResultTable(offers,true));
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
                }
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                
                List<Offer> offers;
                if(obj != null) offers = sess.createQuery("from Offer where "+Util.createWhereToSimple(form)).list();
                else offers = sess.createQuery("from Offer").list();
                sess.getTransaction().commit();
                if (!offers.isEmpty()) {
                        reply += Util.createResultTable(offers,false);
                } else {
                        reply +="<h1>Brak ofert w bazie.</h1>";
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
                String reply_dane;
                user_edit = (UserDTO)s.getAttribute("user_data");
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
            case "edit_offer_form":
                long id_offer = Long.parseLong(request.getParameter("id"));
                params = new HashMap<>();
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                Offer offer = (Offer)sess.get(Offer.class, id_offer);
                params.put("id", Long.toString(offer.getId()));
                params.put("cena[tys zł]", Float.toString(offer.getPrice()));
                params.put("powierzchnia[m2]", Float.toString(offer.getTotal_area()));
                params.put("liczba_pokoi", Integer.toString(offer.getN_of_rooms()));
                params.put("pietro", Integer.toString(offer.getFloor()));
                params.put("odl_od_centrum[km]", Float.toString(offer.getDistance_to_center()));
                params.put("odl_od_mpk[m]", Float.toString(offer.getDistance_to_MPK()));
                params.put("wystawa[okien]", offer.getExposition());
                params.put("adres",offer.getAddress());
                sess.getTransaction().commit();
                out.println(Util.createFormText("edit_offer_form", params,true));
                break;
            case "confirm_edit_offer":
                try{
                obj = request.getParameterValues("form_data[]");
                obj.toString();
                }
                catch(NullPointerException e){
                    out.println(2);
                    return;
                }
                Map<String, String> offer_dane = new HashMap<>();
                for (String str : obj) {
                    String[] qwer = str.split("=>");
                    offer_dane.put(qwer[0], qwer[1]);
                }
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                Offer offer_edit = (Offer)sess.get(Offer.class, Long.parseLong(request.getParameter("id")));
                try{
                offer_edit.editOffer(Float.parseFloat(offer_dane.get("cena")), Float.parseFloat(offer_dane.get("powierzchnia")),
                        Integer.parseInt(offer_dane.get("liczba_pokoi")), Float.parseFloat(offer_dane.get("odl_od_centrum")),
                        Float.parseFloat(offer_dane.get("odl_od_mpk")), Integer.parseInt(offer_dane.get("pietro")),
                        offer_dane.get("wystawa"), offer_dane.get("adres"));
                }
                catch(NumberFormatException e){
                    out.println(0);
                    sess.getTransaction().rollback();
                    return;
                }
                sess.update(offer_edit);
                sess.getTransaction().commit();
                out.println(1);
                break;
            case "add_offer":
                Map<String,String> param = new HashMap<>();
                param.put("cena[tys zł]", "");
                param.put("powierzchnia[m2]", "");
                param.put("liczba_pokoi", "");
                param.put("pietro", "");
                param.put("odl_od_centrum[km]", "");
                param.put("odl_od_mpk[m]", "");
                param.put("wystawa[okien]", "");
                param.put("adres","");
                out.println(Util.createFormText("add_offer_form", param,false));
                break;
            case "confirm_add_offer":
                try{
                obj = request.getParameterValues("form_data[]");
                obj.toString();
                }
                catch(NullPointerException e){
                    out.println(2);
                    return;
                }
                Map<String, String> add_dane = new HashMap<>();
                for (String str : obj) {
                    String[] qwer = str.split("=>");
                    add_dane.put(qwer[0], qwer[1]);
                }
                if(add_dane.size() != 8){
                    out.println(3);
                    return;
                }
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                Offer new_offer;
                try {
                new_offer = new Offer(Float.parseFloat(add_dane.get("cena")), Float.parseFloat(add_dane.get("powierzchnia")),
                        Integer.parseInt(add_dane.get("liczba_pokoi")), Float.parseFloat(add_dane.get("odl_od_centrum")),
                        Float.parseFloat(add_dane.get("odl_od_mpk")), Integer.parseInt(add_dane.get("pietro")),
                        add_dane.get("wystawa"), add_dane.get("adres"));
                }
                catch(NumberFormatException e){
                    out.println(0);
                    sess.getTransaction().rollback();
                    return;
                }
                
                UserDTO dev = (UserDTO)s.getAttribute("user_data");
                dev.getOffers().add(new_offer);
                new_offer.setUser(dev);
                sess.save(new_offer);
                sess.getTransaction().commit();
                out.println(1);
                break;
            case "delete_offer_form":
                long del_offer = Long.parseLong(request.getParameter("id"));
                String html_del = "";
                html_del +="<h1>Usuwasz ofertę o id "+del_offer+"</h1>";
                html_del += "<h2>Potwierdzasz?</h2>";
                html_del +="<button type='button' onclick='confirm_delete_offer()'>Tak</button>";
                out.println(html_del);
                break;
            case "confirm_delete_offer":
                long del_offer_id = Long.parseLong(request.getParameter("id"));
                sess = HibernateUtil.getSessionFactory().getCurrentSession();
                sess.beginTransaction();
                Offer del = (Offer)sess.get(Offer.class, del_offer_id);
                if(del == null){
                    out.println(0);
                    sess.getTransaction().rollback();
                    return;
                }
                sess.delete(del);
                sess.getTransaction().commit();
                out.println(1);
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
