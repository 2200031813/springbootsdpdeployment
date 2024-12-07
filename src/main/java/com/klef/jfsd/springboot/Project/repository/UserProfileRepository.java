package com.klef.jfsd.springboot.Project.repository;

import com.klef.jfsd.springboot.Project.Entity.UserProfileEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserProfileRepository extends JpaRepository<UserProfileEntity, Long> {
}
