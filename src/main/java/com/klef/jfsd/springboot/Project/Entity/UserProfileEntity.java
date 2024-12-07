package com.klef.jfsd.springboot.Project.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class UserProfileEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName;
    private String lastName;
    private int age;
    private String address;
    private String phoneNumber;
    private String bloodGroup;
    private String mothersPhoneNumber;
    private String fathersPhoneNumber;
    private String email;
    private double tenthMarks;
    private double interMarks;
    private String specialization;
    private String resumeUrl;  // Path to the resume file

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getMothersPhoneNumber() {
        return mothersPhoneNumber;
    }

    public void setMothersPhoneNumber(String mothersPhoneNumber) {
        this.mothersPhoneNumber = mothersPhoneNumber;
    }

    public String getFathersPhoneNumber() {
        return fathersPhoneNumber;
    }

    public void setFathersPhoneNumber(String fathersPhoneNumber) {
        this.fathersPhoneNumber = fathersPhoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getTenthMarks() {
        return tenthMarks;
    }

    public void setTenthMarks(double tenthMarks) {
        this.tenthMarks = tenthMarks;
    }

    public double getInterMarks() {
        return interMarks;
    }

    public void setInterMarks(double interMarks) {
        this.interMarks = interMarks;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getResumeUrl() {
        return resumeUrl;
    }

    public void setResumeUrl(String resumeUrl) {
        this.resumeUrl = resumeUrl;
    }
}
