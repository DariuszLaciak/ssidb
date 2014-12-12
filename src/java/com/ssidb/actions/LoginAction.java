package com.ssidb.actions;

import com.ssidb.helpers.XMLUtils;
import com.ssidb.dto.User;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LoginAction extends org.apache.struts.action.Action {

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

        // perform validation
        if ((login == null)
                || password == null
                || login.equals("")
                || password.length() < 3) {

            return mapping.findForward("login_failure");
        }

        String filename = "users.xml";
        ArrayList<User> users = XMLUtils.xml2ArrayListUser(filename);
        if (users == null) {
            users = new ArrayList<>();
        }
        for (User u : users) {
            if (u.getLogin().equals(login) && u.getPassword().equals(password)) {
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
        }

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