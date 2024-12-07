package com.klef.jfsd.springboot.Project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.Project.Entity.JobApplicationEntity;

import com.klef.jfsd.springboot.Project.repository.JobApplicationRepository;


@Service
public class JobApplicantService {

	 @Autowired
	    private JobApplicationRepository jobApplicationRepository;

	// Fetch all job applications
	    public List<JobApplicationEntity> getAllApplications() {
	        return (List<JobApplicationEntity>) jobApplicationRepository.findAll();
	    }

	    // Fetch job applications filtered by branch
	    public List<JobApplicationEntity> getApplicantsByBranch(String branch) {
	        return jobApplicationRepository.findByBranch(branch);
	    }
}
