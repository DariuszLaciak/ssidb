package com.ssidb.actions;

import com.ssidb.helpers.XMLUtils;
import com.ssidb.users.User;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class RegisterAction extends org.apache.struts.action.Action {

    private static final String SUCCESS = "register_success";
    private static final String FAILURE = "register_failure";

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
        String type = formBean.getType();

        // perform validation
        if ((login == null)
                || password == null
                || login.equals("")
                || password.length() < 3) {

            return mapping.findForward(FAILURE);
        }
        
        User nowy = new User();
        nowy.setLogin(login);
        nowy.setPassword(password);
        nowy.setType(type);
        String filename = "users.xml";
        ArrayList<User> uzytkownicy = XMLUtils.xml2ArrayListUser(filename);
        if(uzytkownicy == null) uzytkownicy = new ArrayList<>();
        uzytkownicy.add(nowy);
        XMLUtils.arrayListUser2Xml(uzytkownicy, filename);
        return mapping.findForward(SUCCESS);
    }
}