package com.klef.jfsd.springboot.Project.repository;

import com.klef.jfsd.springboot.Project.Entity.EmployerEntity;



import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployerRepository extends JpaRepository<EmployerEntity, String> {
	
}
