package com.ssidb.users;

import com.ssidb.helpers.UserProfile;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

//TODO
public class CommonUser extends User {

    //Properties
    private String email;
    private String retypedPassword;
    private UserProfile profile;

    //Constructors
    public CommonUser() {
        super();
        this.type = "commonUser";
    }
    public CommonUser(String login, String email, String password, String retypedPassword) {
        super(login, password, "commonUser");
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
    public UserProfile getProfile() {
        return profile;
    }
    public void setProfile(UserProfile profile) {
        this.profile = profile;
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
