package com.ssidb.dto;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

@javax.persistence.NamedNativeQuery(name = "tanie", query = "{? = call tanie(:id) }", resultClass = Offer.class, hints = {
@javax.persistence.QueryHint(name = "org.hibernate.callable", value = "true") })
@Entity
@Table
public class Offer extends org.apache.struts.action.ActionForm implements Serializable {

    private long id;
    private float price;
    private float total_area;
    private int n_of_rooms;
    private float distance_to_center;
    private float distance_to_MPK;
    private int floor;
    private String exposition;
    private String address;
    private UserDTO user;

    public Offer(float price, float total_area, int n_of_rooms, float distance_to_center, float distance_to_MPK, int floor, String exposition, String address) {
        this.price = price;
        this.total_area = total_area;
        this.n_of_rooms = n_of_rooms;
        this.distance_to_center = distance_to_center;
        this.distance_to_MPK = distance_to_MPK;
        this.floor = floor;
        this.exposition = exposition;
        this.address = address;
    }

    public Offer() {
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
    public float getPrice() {
        return price;
    }
    public void setPrice(float price) {
        this.price = price;
    }

    @Column(nullable = false, length = 20)
    public float getTotal_area() {
        return total_area;
    }
    public void setTotal_area(float total_area) {
        this.total_area = total_area;
    }

    @Column(nullable = false, length = 20)
    public float getDistance_to_center() {
        return distance_to_center;
    }
    public void setDistance_to_center(float distance_to_center) {
        this.distance_to_center = distance_to_center;
    }

    @Column(nullable = false, length = 20)
    public int getN_of_rooms() {
        return n_of_rooms;
    }
    public void setN_of_rooms(int n_of_rooms) {
        this.n_of_rooms = n_of_rooms;
    }

    @Column(nullable = false, length = 20)
    public float getDistance_to_MPK() {
        return distance_to_MPK;
    }
    public void setDistance_to_MPK(float distance_to_MPK) {
        this.distance_to_MPK = distance_to_MPK;
    }

    @Column(nullable = false, length = 20)
    public int getFloor() {
        return floor;
    }
    public void setFloor(int floor) {
        this.floor = floor;
    }

    @Column(nullable = false, length = 20)
    public String getExposition() {
        return exposition;
    }
    public void setExposition(String exposition) {
        this.exposition = exposition;
    }

    @Column(nullable = false, length = 20)
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idUser", nullable = true)
    public UserDTO getUser() {
        return user;
    }
    public void setUser(UserDTO user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Offer{" + "price=" + price + ", total_area=" + total_area + ", n_of_rooms=" + n_of_rooms + ", distance_to_center=" + distance_to_center + ", distance_to_MPK=" + distance_to_MPK + ", floor=" + floor + ", exposition=" + exposition + ", address=" + address + '}';
    }
    
    
     /**
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getPrice() <= 0) {
            errors.add("price", new ActionMessage("errors.required","price"));
        }
        if (getTotal_area() <= 0) {
            errors.add("total_area", new ActionMessage("errors.invalid","total_area"));
        }
        if (getDistance_to_center() < 0) {
            errors.add("distance_to_center", new ActionMessage("errors.invalid", "distance_to_center"));
        }
        if(getDistance_to_MPK() < 0){
            errors.add("distance_to_MPK", new ActionMessage("errors.invalid", "distance_to_MPK"));
        }
        if (getN_of_rooms() < 0) {
            errors.add("n_of_rooms", new ActionMessage("errors.invalid", "n_of_rooms"));
        }
        if (getFloor() < -1) {
            errors.add("floor", new ActionMessage("errors.invalid", "floor"));
        }
        if (getExposition() == null) {
            errors.add("exposition", new ActionMessage("errors.invalid", "exposition"));
        }
        return errors;
    }

}
