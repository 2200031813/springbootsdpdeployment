package com.klef.jfsd.springboot.Project.Entity;
import jakarta.persistence.*;


@Entity
@Table(name = "employer")
public class EmployerEntity {

    @Id
    private String empid;
    private String mail;
    private String password;
    private String confirmPassword;

    // Getters and Setters
    public String getEmpid() {
        return empid;
    }

    public void setEmpid(String empid) {
        this.empid = empid;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
