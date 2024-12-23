package com.klef.jfsd.springboot.Project.repository;

import com.klef.jfsd.springboot.Project.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findByUsername(String username);
    
    UserEntity findByEmail(String email);
}
