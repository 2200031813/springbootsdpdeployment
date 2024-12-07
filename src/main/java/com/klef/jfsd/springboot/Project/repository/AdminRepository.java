package com.klef.jfsd.springboot.Project.repository;

import com.klef.jfsd.springboot.Project.Entity.AdminEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<AdminEntity, String> {
    // You can add custom queries here if needed
}
