package com.ssidb.helpers;

import com.ssidb.dto.Offer;
import com.ssidb.dto.UserDTO;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class Util {

    public static String createResultTable(List<Offer> offers, boolean isFuzzy) {
        String table = "";
        for (Offer o : offers) {
            table += "<table class='result_table'><tbody>";
            table += "<tr><td colspan='2'><b>Oferta nr: " + o.getId() + "</b></td></tr>";
            if(isFuzzy)
                table += "<tr><td colspan='2'>Dopasowanie: " + o.getMI() + "</td></tr>";
            table += "<tr><td>Cena całkowita: " + Math.round(o.getPrice()) + " tys. zł</td><td>Jednostkowa: " + Math.round((o.getPrice() / o.getTotal_area() * 1000)) + " zł/m<sup>2</sup></td></tr>";
            table += "<tr><td>Powierzchnia: " + round(o.getTotal_area(), 2) + " m<sup>2</sup></td><td>Wystawa: " + o.getExposition() + "</td></tr>";
            table += "<tr><td>Liczba pokoi: " + o.getN_of_rooms() + "</td><td>Piętro: " + o.getFloor() + "</td></tr>";
            table += "<tr><td>Odl. od centrum: " + round(o.getDistance_to_center(), 2) + " km</td><td>Odl. do MPK: " + round(o.getDistance_to_MPK(), 2) + " m</td></tr>";
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
                    float mi = res.get(o.getId()).getMI();
                    System.out.println(o.getId() + "," + mi);
                    System.out.println(o.getId() + "," + o.getMI());
                    if (mi < o.getMI())
                        o.setMI(mi);
                    System.out.println("after: " + o.getId() + "," + mi);
                    offers.put(o.getId(), o);
                }
            }
        }
        return offers;
    }
    
    public static String createWhereToSimple(Map<String,Integer> values){
        String html ="";
        for(Entry<String,Integer> entry : values.entrySet()){
            String param = entry.getKey().substring(0,entry.getKey().lastIndexOf("_"));
            String type = entry.getKey().substring(entry.getKey().lastIndexOf("_")+1);
            if(!html.equals("")){
                html += " and ";
            }
            if(type.equals("min")){
                html += param + " > " + entry.getValue();
            }
            else {
                html += param + " < " + entry.getValue();
            }
        }
        System.out.println(html);
        return html;
    }
}