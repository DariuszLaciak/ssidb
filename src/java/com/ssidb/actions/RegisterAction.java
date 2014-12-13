package com.ssidb.actions;


import com.ssidb.dto.User;
import com.ssidb.helpers.HibernateUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;

public class RegisterAction extends org.apache.struts.action.Action {
    
    Session s = HibernateUtil.getSessionFactory().getCurrentSession();

    /**
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        // extract user data
        User formBean = (User) form;
        String login = formBean.getLogin();
        String password = formBean.getPassword();
        String retypedPwd = formBean.getRetypedPassword();
        String type = formBean.getType();
        String email = formBean.getEmail();

        // perform validation
        if ((login == null)
                || password == null
                || login.equals("")
                || password.length() < 3
                || !password.equals(retypedPwd)) {

            return mapping.findForward("register_failure");
        }

        

        if (loginExists(login)) {
            formBean.setLogin("");
            return mapping.findForward("register_failure");
        } else {
            User nowy = new User(type, login, password, email);
            s = HibernateUtil.getSessionFactory().getCurrentSession();
            s.beginTransaction();
            long id = (long)s.save(nowy);
            s.getTransaction().commit();
            if(id < 1)
                return mapping.findForward("register_failure");
             
            return mapping.findForward("register_success");
        }
    }

    boolean loginExists(String login) {
        boolean success = true;
        s = HibernateUtil.getSessionFactory().getCurrentSession();
        s.beginTransaction();
        Query q = s.createQuery("from User where login= :login").setString("login", login);
        if(q.list().isEmpty()){
            success = false;
        }
        s.getTransaction().commit();
        
        return success;
    }
}