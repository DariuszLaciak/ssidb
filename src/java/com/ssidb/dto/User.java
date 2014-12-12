package com.ssidb.dto;

import java.io.Serializable;

import java.util.HashSet;
import java.util.Set;

import java.util.HashMap;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

@Entity
@Table
public class User extends org.apache.struts.action.ActionForm implements Serializable {

    private long id;
    private String type;
    private String login;
    private String password;
    private String retypedPassword;
    private String address;
    private String phone;
    private String email;
    private Profile profile;

    private Set<Offer> offers_set = new HashSet<>();

    private HashMap<Integer,Offer> offers;
    private String error;


    public User(String login, String password, String retypedPassword, String type, String address, String phone, String email) {
        this.login = login;
        this.password = password;
        this.retypedPassword = retypedPassword;
        this.type = type;
        this.address = address;
        this.phone = phone;
        this.email = email;
    }

    public User() {
    }

    
    
    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(unique = true, nullable = false)
    public long getId() {
        return id;
    }

    private void setId(long id) {
        this.id = id;
    }

    @Column(nullable = false, length = 20)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        if(type == null) this.type = "guest";
        this.type = type;
    }
    
    @Column(nullable = false, length = 20)
    public String getLogin() {
        return login;
    }

    public void setLogin(String username) {
        this.login = username;
    }

    @Column(nullable = false, length = 20)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(nullable = false, length = 20)
    public String getRetypedPassword() {
        return retypedPassword;
    }

    public void setRetypedPassword(String retypedPassword) {
        this.retypedPassword = retypedPassword;
    }

    @Column(nullable = false, length = 20)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(nullable = false, length = 20)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Column(nullable = false, length = 20)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @OneToOne(fetch = FetchType.EAGER, mappedBy = "user", cascade = CascadeType.ALL, optional = true)
    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
    public Set<Offer> getOffers_set() {
        return offers_set;
    }

    public void setOffers(Set<Offer> offers_set) {
        this.offers_set = offers_set;
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
