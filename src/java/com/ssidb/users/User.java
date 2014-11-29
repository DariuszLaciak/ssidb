package com.ssidb.users;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class User extends org.apache.struts.action.ActionForm {
    
    //Propeties
    protected String login;
    protected String password;
    protected String type;
    protected String error;
    
    //Constructors
        public User() {
        super();
    }
    public User(String login, String password, String userType) {
        super();
        this.password = password;
        this.login = login;
        this.type = userType;
    }
    
    //Getters & Setters
    public String getLogin() {
        return login;
    }
    public void setLogin(String string) {
        login = string;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        if(type == null) this.type = "guest";
        this.type = type;
    }
    public String getError() {
        return error;
    }
    public void setError(String error) {
        this.error = error;
    }

    /**
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getLogin() == null || getLogin().length() < 1) {
            errors.add("login", new ActionMessage("errors.required","login"));
        }
        if (getPassword() == null || getPassword().length() < 3) {
            errors.add("password", new ActionMessage("errors.invalid","hasło"));
        }
        return errors;
    }
}
