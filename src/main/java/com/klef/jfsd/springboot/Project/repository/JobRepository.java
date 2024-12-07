package com.klef.jfsd.springboot.Project.repository;


import com.klef.jfsd.springboot.Project.Entity.JobEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JobRepository extends CrudRepository<JobEntity, Long> {

	
}
