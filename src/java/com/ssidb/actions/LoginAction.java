package com.ssidb.actions;

import com.ssidb.helpers.XMLUtils;
import com.ssidb.users.User;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LoginAction extends org.apache.struts.action.Action {

    private static final String SUCCESS = "login_success";
    private static final String FAILURE = "login_failure";

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
        if ((login == null) ||
                password == null ||
                login.equals("") ||
                password.length() < 3) {

            return mapping.findForward(FAILURE);
        }
        
        String filename = "users.xml";
        ArrayList<User> users = XMLUtils.xml2ArrayListUser(filename);
        if(users == null) users = new ArrayList<>();
        for (User u : users) {
            if(u.getLogin().equals(login) && u.getPassword().equals(password))
            {
                formBean.setType(u.getType());
                return mapping.findForward(SUCCESS);
            }
        }
        
        return mapping.findForward(FAILURE);
    }
}