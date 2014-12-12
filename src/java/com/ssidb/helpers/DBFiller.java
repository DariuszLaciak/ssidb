/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ssidb.helpers;

import com.ssidb.dto.Offer;
import com.ssidb.dto.Profile;
import com.ssidb.dto.User;
import org.hibernate.Session;

/**
 *
 * @author Darek
 */
public class DBFiller {
    
    
    public static void main(String[] args){
        Session s = HibernateUtil.getSessionFactory().openSession();
        
        s.beginTransaction();
        User user = new User("user", "user", "user","commonuser", "userowo", "1234567890", "user@user.user");
        User developer = new User("dev", "dev", "dev","superuser", "devowo", "0987654321", "dev@dev.dev");
        User dev = new User("dev1", "dev1", "dev1", "dev1","superuser", "1023954633", "dev1@dev1.dev");
        User admin = new User("admin", "admin", "admin","admin", "adminowo", "0192837465", "admin@admin.admin");
        
        Offer offer1 = new Offer(210000F, 31.5F, 4, 7.4F, 0.3F, 3, "tak", "adres1");
        Offer offer2 = new Offer(187500F, 22.7F, 3, 3.6F, 0.1F, 1, "tak", "adres2");
        Offer offer3 = new Offer(567220F, 48F, 6, 1F,0.1F,5,"nie","adres3");
        
        Profile profile = new Profile(160000F, 180000F, 170000F, 190000F, 185000F, 230000F, 15F, 17F, 17F, 18F, 17.5F, 25F, 1F, 4F, 3F, 10F, 1F, 2F, 2F, 10F, 0.1F, 0.4F, 0.3F, 1F);
        
        user.setProfile(profile);
        profile.setUser(user);
        
        developer.getOffers_set().add(offer1);
        developer.getOffers_set().add(offer3);
        
        offer1.setUser(developer);
        offer3.setUser(developer);
        
        dev.getOffers_set().add(offer2);
        offer2.setUser(dev);
        
        s.save(user);
        s.save(developer);
        s.save(dev);
        
        s.save(offer1);
        s.save(offer2);
        s.save(offer3);
        
        s.getTransaction().commit();
        s.close();
        System.exit(0);
    }
}
