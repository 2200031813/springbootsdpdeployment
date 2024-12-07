package com.klef.jfsd.springboot.Project.service;

import com.klef.jfsd.springboot.Project.Entity.EmployerEntity;
import com.klef.jfsd.springboot.Project.repository.EmployerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployerService {

    @Autowired
    private EmployerRepository employerRepository;

    // Get all employers
    public List<EmployerEntity> getAllEmployers() {
        return employerRepository.findAll();
    }

//    // Get employer by empId
//    public Optional<EmployerEntity> getEmployerById(String empid) {
//        return employerRepository.findById(empid);
//    }
        public EmployerEntity getEmployerById(String empid) {
    	return employerRepository.findById(empid).orElseThrow(null);
    }
  

    // Save or update employer
    public EmployerEntity saveEmployer(EmployerEntity employer) {
        return employerRepository.save(employer);
    }

    // Delete employer by empId
    public void deleteEmployer(String empid) {
        employerRepository.deleteById(empid);
    }
}
