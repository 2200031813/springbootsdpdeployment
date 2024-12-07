package com.klef.jfsd.springboot.Project.Entity;

import jakarta.persistence.*;


@Entity
@Table(name = "job_application") // Ensure the table exists in your database
public class JobApplicationEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "id_number", nullable = false)
    private String idNumber;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "college", nullable = false)
    private String college;

    @Column(name = "branch", nullable = false)
    private String branch;

    @Column(name = "passing_year", nullable = false)
    private int passingYear;

    @Column(name = "tenth_marks", nullable = false)
    private double tenthMarks;

    @Column(name = "inter_marks", nullable = false)
    private double interMarks;

    @Column(name = "cgpa", nullable = false)
    private double cgpa;

    @Lob
    @Column(name = "certificates", nullable = true)
    private String certificates;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public int getPassingYear() {
        return passingYear;
    }

    public void setPassingYear(int passingYear) {
        this.passingYear = passingYear;
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

    public double getCgpa() {
        return cgpa;
    }

    public void setCgpa(double cgpa) {
        this.cgpa = cgpa;
    }

    public String getCertificates() {
        return certificates;
    }

    public void setCertificates(String certificates) {
        this.certificates = certificates;
    }
}
