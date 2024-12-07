package com.klef.jfsd.springboot.Project.repository;


import com.klef.jfsd.springboot.Project.Entity.JobApplicationEntity;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JobApplicationRepository extends CrudRepository<JobApplicationEntity, Long> {
	 // Fetch applicants by branch
    @Query("SELECT ja FROM JobApplicationEntity ja WHERE ja.branch = :branch")
    List<JobApplicationEntity> findByBranch(String branch);
	
}
