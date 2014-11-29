package com.ssidb.users;

public class Admin extends User {
    
    //Constructors
    public Admin() {
        super();
        this.type = "admin";
    }
    public Admin(String login, String password) {
        super(login,password,"admin");
    }
}