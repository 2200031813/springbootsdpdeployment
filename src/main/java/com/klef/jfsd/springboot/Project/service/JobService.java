package com.klef.jfsd.springboot.Project.service;

import com.klef.jfsd.springboot.Project.Entity.JobEntity;
import com.klef.jfsd.springboot.Project.repository.JobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepository jobRepository;

    // Fetch all jobs from the database
    public List<JobEntity> getAllJobs() {
        return (List<JobEntity>) jobRepository.findAll();
    }
}
