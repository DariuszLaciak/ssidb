package com.ssidb.users;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

//TODO
public class SuperUser extends User {

    //Properties
    private String email;
    private String retypedPassword;

    //Constructors
        public SuperUser() {
        super();
        this.type = "superUser";
    }
    public SuperUser(String login, String email, String password, String retypedPassword) {
        super(login, password, "superUser");
        this.email = email;
        this.retypedPassword = retypedPassword;
    }
    
    //Getters & Setters
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getRetypedPassword() {
        return retypedPassword;
    }
    public void setRetypedPassword(String retypedPassword) {
        this.retypedPassword = retypedPassword;
    }


    /**
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = super.validate(mapping, request);
        if (getRetypedPassword() == null || getRetypedPassword().length() < 3) {
            errors.add("retypedPassword", new ActionMessage("errors.invalid", "powtorzenie hasła"));
        }
        if (getEmail() == null || getEmail().indexOf('@') == -1) {
            errors.add("email", new ActionMessage("errors.invalid", "email"));
        }
        if (!(getRetypedPassword().equals(getPassword()))) {
            errors.add("password", new ActionMessage("errors.passwords.mismatch"));
        }
        return errors;
    }
}
