package com.ssidb.dto;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table
public class Profile extends org.apache.struts.action.ActionForm implements Serializable {

    private long id;
    private UserDTO user;
    
    // default values
    private float area_a = 20;
    private float area_b = 50;
    private float area_c = 70;
    private float area_d = 100;
    
    private float price_a = 70;
    private float price_b = 300;
    private float price_c = 500;
    private float price_d = 1000;
    
    private float floor_a = 1;
    private float floor_b = 3;
    private float floor_c = 5;
    private float floor_d = 7;
    
    private float city_dist_a = 1;
    private float city_dist_b = 5;
    private float city_dist_c = 7;
    private float city_dist_d = 10;
    
    private float mpk_dist_a = 20;
    private float mpk_dist_b = 200;
    private float mpk_dist_c = 500;
    private float mpk_dist_d = 1000;

    public Profile(float area_a, float area_b, float area_c, float area_d, float price_a, float price_b, float price_c, float price_d, float floor_a, float floor_b, float floor_c, float floor_d, float city_dist_a, float city_dist_b, float city_dist_c, float city_dist_d, float mpk_dist_a, float mpk_dist_b, float mpk_dist_c, float mpk_dist_d) {
        this.area_a = area_a;
        this.area_b = area_b;
        this.area_c = area_c;
        this.area_d = area_d;
        this.price_a = price_a;
        this.price_b = price_b;
        this.price_c = price_c;
        this.price_d = price_d;
        this.floor_a = floor_a;
        this.floor_b = floor_b;
        this.floor_c = floor_c;
        this.floor_d = floor_d;
        this.city_dist_a = city_dist_a;
        this.city_dist_b = city_dist_b;
        this.city_dist_c = city_dist_c;
        this.city_dist_d = city_dist_d;
        this.mpk_dist_a = mpk_dist_a;
        this.mpk_dist_b = mpk_dist_b;
        this.mpk_dist_c = mpk_dist_c;
        this.mpk_dist_d = mpk_dist_d;
    }
    
    public Profile() {
    }

    public void editProfile(float price_a, float price_b, float price_c, float price_d, float area_a, float area_b, float area_c, float area_d, float floor_a, float floor_b, float floor_c, float floor_d, float city_dist_a, float city_dist_b, float city_dist_c, float city_dist_d, float mpk_dist_a, float mpk_dist_b, float mpk_dist_c, float mpk_dist_d) {
        this.area_a = area_a;
        this.area_b = area_b;
        this.area_c = area_c;
        this.area_d = area_d;
        this.price_a = price_a;
        this.price_b = price_b;
        this.price_c = price_c;
        this.price_d = price_d;
        this.floor_a = floor_a;
        this.floor_b = floor_b;
        this.floor_c = floor_c;
        this.floor_d = floor_d;
        this.city_dist_a = city_dist_a;
        this.city_dist_b = city_dist_b;
        this.city_dist_c = city_dist_c;
        this.city_dist_d = city_dist_d;
        this.mpk_dist_a = mpk_dist_a;
        this.mpk_dist_b = mpk_dist_b;
        this.mpk_dist_c = mpk_dist_c;
        this.mpk_dist_d = mpk_dist_d;
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

    @OneToOne(optional = true)
    @JoinColumn(name = "user_id", referencedColumnName = "id", nullable = true, unique = true)
    public UserDTO getUser() {
        return user;
    }
    public void setUser(UserDTO user) {
        this.user = user;
    }
    
    @Column(nullable = false, length = 20)
    public float getArea_a() {
        return area_a;
    }
    public void setArea_a(float area_a) {
        this.area_a = area_a;
    }
    
    @Column(nullable = false, length = 20)
    public float getArea_b() {
        return area_b;
    }
    public void setArea_b(float area_b) {
        this.area_b = area_b;
    }
    
    @Column(nullable = false, length = 20)
    public float getArea_c() {
        return area_c;
    }
    public void setArea_c(float area_c) {
        this.area_c = area_c;
    }
    
    @Column(nullable = false, length = 20)
    public float getArea_d() {
        return area_d;
    }
    public void setArea_d(float area_d) {
        this.area_d = area_d;
    }
    
    @Column(nullable = false, length = 20)
    public float getPrice_a() {
        return price_a;
    }
    public void setPrice_a(float price_a) {
        this.price_a = price_a;
    }
    
    @Column(nullable = false, length = 20)
    public float getPrice_b() {
        return price_b;
    }
    public void setPrice_b(float price_b) {
        this.price_b = price_b;
    }
    
    @Column(nullable = false, length = 20)
    public float getPrice_c() {
        return price_c;
    }
    public void setPrice_c(float price_c) {
        this.price_c = price_c;
    }
    
    @Column(nullable = false, length = 20)
    public float getPrice_d() {
        return price_d;
    }
    public void setPrice_d(float price_d) {
        this.price_d = price_d;
    }
    
    @Column(nullable = false, length = 20)
    public float getFloor_a() {
        return floor_a;
    }
    public void setFloor_a(float floor_a) {
        this.floor_a = floor_a;
    }
    
    @Column(nullable = false, length = 20)
    public float getFloor_b() {
        return floor_b;
    }
    public void setFloor_b(float floor_b) {
        this.floor_b = floor_b;
    }
    
    @Column(nullable = false, length = 20)
    public float getFloor_c() {
        return floor_c;
    }
    public void setFloor_c(float floor_c) {
        this.floor_c = floor_c;
    }
    
    @Column(nullable = false, length = 20)
    public float getFloor_d() {
        return floor_d;
    }
    public void setFloor_d(float floor_d) {
        this.floor_d = floor_d;
    }
    
    @Column(nullable = false, length = 20)
    public float getCity_dist_a() {
        return city_dist_a;
    }
    public void setCity_dist_a(float city_dist_a) {
        this.city_dist_a = city_dist_a;
    }
    
    @Column(nullable = false, length = 20)
    public float getCity_dist_b() {
        return city_dist_b;
    }
    public void setCity_dist_b(float city_dist_b) {
        this.city_dist_b = city_dist_b;
    }
    
    @Column(nullable = false, length = 20)
    public float getCity_dist_c() {
        return city_dist_c;
    }
    public void setCity_dist_c(float city_dist_c) {
        this.city_dist_c = city_dist_c;
    }
    
    @Column(nullable = false, length = 20)
    public float getCity_dist_d() {
        return city_dist_d;
    }
    public void setCity_dist_d(float city_dist_d) {
        this.city_dist_d = city_dist_d;
    }
    
    @Column(nullable = false, length = 20)
    public float getMpk_dist_a() {
        return mpk_dist_a;
    }
    public void setMpk_dist_a(float mpk_dist_a) {
        this.mpk_dist_a = mpk_dist_a;
    }
    
    @Column(nullable = false, length = 20)
    public float getMpk_dist_b() {
        return mpk_dist_b;
    }
    public void setMpk_dist_b(float mpk_dist_b) {
        this.mpk_dist_b = mpk_dist_b;
    }
    
    @Column(nullable = false, length = 20)
    public float getMpk_dist_c() {
        return mpk_dist_c;
    }
    public void setMpk_dist_c(float mpk_dist_c) {
        this.mpk_dist_c = mpk_dist_c;
    }
    
    @Column(nullable = false, length = 20)
    public float getMpk_dist_d() {
        return mpk_dist_d;
    }
    public void setMpk_dist_d(float mpk_dist_d) {
        this.mpk_dist_d = mpk_dist_d;
    }
    
}
