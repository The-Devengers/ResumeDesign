/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.resume.dto;
/**
 *
 * @author User
 */
public class Resume {
    private String title;
    private String updateDate;
    private String uID;
    private String imagePath;
    private int status;

    private final int OLD = 1;
    private final int NEW = 0;

    public Resume() {
    }

    public Resume(String title, String updateDate, String owner) {
        this.title = title;
        this.updateDate = updateDate;
        this.uID = owner;
        this.status = NEW;
    }
    
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    public String getOwner() {
        return uID;
    }

    public void setOwner(String owner) {
        this.uID = owner;
    }

    public String getImageFileName() {
        return imagePath;
    }

    public void setImageFileName(String imageFileName) {
        this.imagePath = imageFileName;
    }

    
}
