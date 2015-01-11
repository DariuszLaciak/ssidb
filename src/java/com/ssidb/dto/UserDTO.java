package com.ssidb.dto;

import java.io.Serializable;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

@Entity
@Table
public class UserDTO extends org.apache.struts.action.ActionForm implements Serializable {

    private long id;
    private String type;
    private String login;
    private String password;
    private String retypedPassword;
    private String address;
    private String phone;
    private String email;
    private Profile profile;

    private Set<Offer> offers = new HashSet<>();

    private String error;
    
    public UserDTO(){}

    public UserDTO(String type, String login, String password, String address, String phone, String email) {
        this.type = type;
        this.login = login;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.email = email;
        if(this.type.equals("commonUser"))
        {
            this.profile = new Profile();
            this.profile.setUser(this);
        }
    }
    
    public void editUser(String password, String address, String phone, String email){
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.email = email;
    }
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(unique = true, nullable = false)
    public long getId() {
        return id;
    }
    public void setId(long id) {
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
    
    @Transient
    public String getRetypedPassword() {
        return retypedPassword;
    }
    public void setRetypedPassword(String retypedPassword) {
        this.retypedPassword = retypedPassword;
    }

    @Column(nullable = true, length = 20)
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    @Column(nullable = true, length = 20)
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
    public Set<Offer> getOffers() {
        return offers;
    }
    public void setOffers(Set<Offer> offers) {
        this.offers = offers;
    }
    
    @Transient
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
        if(getType() == null){
            errors.add("type", new ActionMessage("errors.invalid", "typ użytkownika"));
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
