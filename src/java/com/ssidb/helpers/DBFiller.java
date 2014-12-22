/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ssidb.helpers;

import com.ssidb.dto.Offer;
import com.ssidb.dto.Profile;
import com.ssidb.dto.UserDTO;
import java.util.Random;
import org.hibernate.Session;

/**
 *
 * @author Darek
 */
public class DBFiller {
    
    
    public static void main(String[] args){
        Session s = HibernateUtil.getSessionFactory().openSession();
        
        s.beginTransaction();
        UserDTO user = new UserDTO("commonUser", "user", "user","userowo", "1234567890", "user@user.user");
        UserDTO developer = new UserDTO("superUser","dev", "dev","devowo",  "0987654321", "dev@dev.dev");
        UserDTO dev = new UserDTO("superUser","dev1", "dev1" ,"devowo", "1023954633", "dev1@dev1.dev");
        UserDTO admin = new UserDTO("admin", "admin","admin", "adminowo", "0192837465", "admin@admin.admin");

        Profile profile = new Profile();
        
        user.setProfile(profile);
        profile.setUser(user);
                
        s.save(user);
        s.save(developer);
        s.save(dev);
        s.save(admin);
        
        Random r = new Random(System.currentTimeMillis());
        for(int i = 0; i < 50 ; i++){
            
            float price = r.nextFloat()*(1200) + 40;
            float area = r.nextFloat()*100 + 10;
            int floor = r.nextInt(11)+1;
            float city = r.nextFloat()*12;
            float mpk = r.nextFloat()*1200+10;
            int rooms = r.nextInt(6)+1;
            String exposition = "N";
            if(i%2 == 0)
            {
                if(i%4 == 0)
                    exposition = "S";
                else exposition = "W";
            }
            if(i%3 == 0)
                exposition = "E";
            Offer offer = new Offer(price, area, rooms, city, mpk, floor, exposition, "adres"+(i+1));
            developer.getOffers().add(offer);
            if(r.nextBoolean())
                offer.setUser(developer);
            else
                offer.setUser(dev);
            s.save(offer);
        }
        
        s.getTransaction().commit();
        s.close();
        System.exit(0);
    }
}
