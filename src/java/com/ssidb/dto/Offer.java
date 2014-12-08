/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ssidb.dto;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 *
 * @author Darek
 */
@Entity
@Table
public class Offer implements Serializable {

    private long id;
    private float price;
    private float total_area;
    private int n_of_rooms;

    private float distance_to_center;
    private float distance_to_MPK;

    private int floor;
    private String exposition;
    private String address;

    private User user;

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

    @OneToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
