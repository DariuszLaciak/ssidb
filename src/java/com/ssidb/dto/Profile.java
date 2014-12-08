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
public class Profile implements Serializable {

    private long id;
    private String function;
    private float tanie_min;
    private float tanie_max;
    private float przecietne_min;
    private float przecietne_max;
    private float drogie_min;
    private float drogie_max;
    private float male_min;
    private float male_max;
    private float srednie_min;
    private float srednie_max;
    private float duze_min;
    private float duze_max;
    private float nisko_min;
    private float nisko_max;
    private float wysoko_min;
    private float wysoko_max;
    private float c_bliko_min;
    private float c_blisko_max;
    private float c_daleko_min;
    private float c_daleko_max;
    private float mpk_blisko_min;
    private float mpk_blisko_max;
    private float mpk_daleko_min;
    private float mpk_daleko_max;

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
    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }

    @OneToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id", nullable = true)
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Column(nullable = false, length = 20)
    public float getTanie_min() {
        return tanie_min;
    }

    public void setTanie_min(float tanie_min) {
        this.tanie_min = tanie_min;
    }

    @Column(nullable = false, length = 20)
    public float getTanie_max() {
        return tanie_max;
    }

    public void setTanie_max(float tanie_max) {
        this.tanie_max = tanie_max;
    }

    @Column(nullable = false, length = 20)
    public float getPrzecietne_min() {
        return przecietne_min;
    }

    public void setPrzecietne_min(float przecietne_min) {
        this.przecietne_min = przecietne_min;
    }

    @Column(nullable = false, length = 20)
    public float getPrzecietne_max() {
        return przecietne_max;
    }

    public void setPrzecietne_max(float przecietne_max) {
        this.przecietne_max = przecietne_max;
    }

    @Column(nullable = false, length = 20)
    public float getDrogie_min() {
        return drogie_min;
    }

    public void setDrogie_min(float drogie_min) {
        this.drogie_min = drogie_min;
    }

    @Column(nullable = false, length = 20)
    public float getDrogie_max() {
        return drogie_max;
    }

    public void setDrogie_max(float drogie_max) {
        this.drogie_max = drogie_max;
    }

    @Column(nullable = false, length = 20)
    public float getMale_min() {
        return male_min;
    }

    public void setMale_min(float male_min) {
        this.male_min = male_min;
    }

    @Column(nullable = false, length = 20)
    public float getMale_max() {
        return male_max;
    }

    public void setMale_max(float male_max) {
        this.male_max = male_max;
    }

    @Column(nullable = false, length = 20)
    public float getSrednie_min() {
        return srednie_min;
    }

    public void setSrednie_min(float srednie_min) {
        this.srednie_min = srednie_min;
    }

    @Column(nullable = false, length = 20)
    public float getSrednie_max() {
        return srednie_max;
    }

    public void setSrednie_max(float srednie_max) {
        this.srednie_max = srednie_max;
    }

    @Column(nullable = false, length = 20)
    public float getDuze_min() {
        return duze_min;
    }

    public void setDuze_min(float duze_min) {
        this.duze_min = duze_min;
    }

    @Column(nullable = false, length = 20)
    public float getDuze_max() {
        return duze_max;
    }

    public void setDuze_max(float duze_max) {
        this.duze_max = duze_max;
    }

    @Column(nullable = false, length = 20)
    public float getNisko_min() {
        return nisko_min;
    }

    public void setNisko_min(float nisko_min) {
        this.nisko_min = nisko_min;
    }

    @Column(nullable = false, length = 20)
    public float getNisko_max() {
        return nisko_max;
    }

    public void setNisko_max(float nisko_max) {
        this.nisko_max = nisko_max;
    }

    @Column(nullable = false, length = 20)
    public float getWysoko_min() {
        return wysoko_min;
    }

    public void setWysoko_min(float wysoko_min) {
        this.wysoko_min = wysoko_min;
    }

    @Column(nullable = false, length = 20)
    public float getWysoko_max() {
        return wysoko_max;
    }

    public void setWysoko_max(float wysoko_max) {
        this.wysoko_max = wysoko_max;
    }

    @Column(nullable = false, length = 20)
    public float getC_bliko_min() {
        return c_bliko_min;
    }

    public void setC_bliko_min(float c_bliko_min) {
        this.c_bliko_min = c_bliko_min;
    }

    @Column(nullable = false, length = 20)
    public float getC_blisko_max() {
        return c_blisko_max;
    }

    public void setC_blisko_max(float c_blisko_max) {
        this.c_blisko_max = c_blisko_max;
    }

    @Column(nullable = false, length = 20)
    public float getC_daleko_min() {
        return c_daleko_min;
    }

    public void setC_daleko_min(float c_daleko_min) {
        this.c_daleko_min = c_daleko_min;
    }

    @Column(nullable = false, length = 20)
    public float getC_daleko_max() {
        return c_daleko_max;
    }

    public void setC_daleko_max(float c_daleko_max) {
        this.c_daleko_max = c_daleko_max;
    }

    @Column(nullable = false, length = 20)
    public float getMpk_blisko_min() {
        return mpk_blisko_min;
    }

    public void setMpk_blisko_min(float mpk_blisko_min) {
        this.mpk_blisko_min = mpk_blisko_min;
    }

    @Column(nullable = false, length = 20)
    public float getMpk_blisko_max() {
        return mpk_blisko_max;
    }

    public void setMpk_blisko_max(float mpk_blisko_max) {
        this.mpk_blisko_max = mpk_blisko_max;
    }

    @Column(nullable = false, length = 20)
    public float getMpk_daleko_min() {
        return mpk_daleko_min;
    }

    public void setMpk_daleko_min(float mpk_daleko_min) {
        this.mpk_daleko_min = mpk_daleko_min;
    }

    @Column(nullable = false, length = 20)
    public float getMpk_daleko_max() {
        return mpk_daleko_max;
    }

    public void setMpk_daleko_max(float mpk_daleko_max) {
        this.mpk_daleko_max = mpk_daleko_max;
    }

}
