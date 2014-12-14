package com.ssidb.actions;

import com.ssidb.helpers.XMLUtils;
import com.ssidb.dto.UserDTO;
import com.ssidb.helpers.HibernateUtil;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;

public class LoginAction extends org.apache.struts.action.Action {

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
        UserDTO formBean = (UserDTO) form;
        String login = formBean.getLogin();
        String password = formBean.getPassword();

        // perform validation
        if ((login == null)
                || password == null
                || login.equals("")
                || password.length() < 3) {

            return mapping.findForward("login_failure");
        }

        UserDTO u = null;
        s = HibernateUtil.getSessionFactory().getCurrentSession();
        s.beginTransaction();
        Query q = s.createQuery("from UserDTO where login=:login and password=:pass").setString("login", login).setString("pass", password);
        if (!q.list().isEmpty()) {
            u = (UserDTO) q.list().get(0);

            String type = u.getType();
            formBean.setType(type);
            switch (type) {
                case "admin":
                    return mapping.findForward("admin_page");
                case "superUser":
                    return mapping.findForward("superUser_page");
                default:
                    return mapping.findForward("commonUser_page");
            }
        }
        s.getTransaction().commit();
        return mapping.findForward("login_failure");
    }

    public ActionForward logout(ActionMapping mapping, ActionForm form,
            HttpSession session, HttpServletResponse response)
            throws Exception {
        session.removeAttribute("User");
        session.invalidate();
        return mapping.findForward("logout_success");
    }
}
