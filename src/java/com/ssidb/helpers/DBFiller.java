/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ssidb.helpers;

import org.hibernate.Session;

/**
 *
 * @author Darek
 */
public class DBFiller {
    
    
    public static void main(String[] args){
        Session s = HibernateUtil.getSessionFactory().openSession();
        
        s.beginTransaction();
        
        s.getTransaction().commit();
        s.close();
        System.exit(0);
    }
}
