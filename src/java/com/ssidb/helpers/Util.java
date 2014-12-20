/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ssidb.helpers;

import com.ssidb.dto.Offer;
import java.math.BigDecimal;
import java.util.List;

/**
 *
 * @author Darek
 */
public class Util {
    
    public static String createResultTable(List<Offer> offers){
        String table = "";
        for (Offer o : offers) {
            table += "<table class='result_table'><tbody>";
            table += "<tr><td colspan='2'>Powierzchnia: "+round(o.getTotal_area(),2)+" m2</td></tr>";
            table += "<tr><td>Liczba pokoi: "+o.getN_of_rooms()+"</td><td>Piętro: "+o.getFloor()+"</td></tr>";
            table += "<tr><td>Odl. od centrum: "+round(o.getDistance_to_center(),2)+" km</td><td>Odl. do MPK: "+round(o.getDistance_to_MPK(),2)+" m</td></tr>";
            table += "<tr><td>Cena całkowita: "+Math.round(o.getPrice())+" tys. zł</td><td>Jednostkowa: "+Math.round((o.getPrice()/o.getTotal_area()*1000))+" zł/m2</td></tr>";
            table += "<tr rowspan='2'><td colspan='2'>Adres: <br />"+o.getAddress()+"</td></tr>";
            table +="</tbody></table>";
        }
        
        return table;
    }
    
    public static double round(double unrounded, int precision)
{
    BigDecimal bd = new BigDecimal(unrounded);
    BigDecimal rounded = bd.setScale(precision, BigDecimal.ROUND_HALF_UP);
    return rounded.doubleValue();
}
}
