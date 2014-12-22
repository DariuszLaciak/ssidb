/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ssidb.helpers;

import com.ssidb.dto.Offer;
import com.ssidb.dto.UserDTO;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Darek
 */
public class Util {

    public static String createResultTable(List<Offer> offers) {
        String table = "";
        for (Offer o : offers) {
            table += "<table class='result_table'><tbody>";
            table += "<tr><td colspan='2'><b>Oferta nr: " + o.getId() + "</b></td></tr>";
            table += "<tr><td>Cena całkowita: " + Math.round(o.getPrice()) + " tys. zł</td><td>Jednostkowa: " + Math.round((o.getPrice() / o.getTotal_area() * 1000)) + " zł/m<sup>2</sup></td></tr>";
            table += "<tr><td>Powierzchnia: " + round(o.getTotal_area(), 2) + " m<sup>2</sup></td><td>Wystawa: " + o.getExposition() + "</td></tr>";
            table += "<tr><td>Liczba pokoi: " + o.getN_of_rooms() + "</td><td>Piętro: " + o.getFloor() + "</td></tr>";
            table += "<tr><td>Odl. od centrum: " + round(o.getDistance_to_center(), 2) + " km</td><td>Odl. do MPK: " + round(o.getDistance_to_MPK(), 2) + " m</td></tr>";
            //table += "<tr rowspan='2'><td colspan='2'>Adres: <br />" + o.getAddress() + "</td></tr>";
            table += "<tr rowspan='2'><td colspan='2'>Kontakt: <br />" + getDeveloper(o.getUser()) + "</td></tr>";
            table += "</tbody></table>";
        }

        return table;
    }
    
    public static String getDeveloper(UserDTO user)
    {                       
        return "tel.: " + user.getPhone() + "<br />email: " + user.getEmail();
    }

    public static double round(double unrounded, int precision) {
        BigDecimal bd = new BigDecimal(unrounded);
        BigDecimal rounded = bd.setScale(precision, BigDecimal.ROUND_HALF_UP);
        return rounded.doubleValue();
    }

    public static Map<Long, Offer> getJoinOnAllResults(Map<Long, Offer> res, List<Offer> of) {
        Map<Long, Offer> offers = new HashMap<>();

        if (res.isEmpty()) {
            for (Offer o : of) {
                offers.put(o.getId(), o);
            }
        } else {
            for (Offer o : of) {
                if(res.containsKey(o.getId())){
                    offers.put(o.getId(), o);
                }
            }
        }
        
        return offers;
    }
}
