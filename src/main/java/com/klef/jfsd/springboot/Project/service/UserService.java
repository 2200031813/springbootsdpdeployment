package com.klef.jfsd.springboot.Project.service;

import com.klef.jfsd.springboot.Project.Entity.UserEntity;
import com.klef.jfsd.springboot.Project.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    // Fetch all users
    public List<UserEntity> getAllUsers() {
        return userRepository.findAll();
    }
    
    // Fetch user by ID
    public UserEntity getUserById(Long id) {
        return userRepository.findById(id).orElse(null);
    }


    // Update user
    public void updateUser(UserEntity user) {
        userRepository.save(user);
    }

    // Delete user by ID
    public void deleteUserById(Long id) {
        userRepository.deleteById(id);
    }
}
