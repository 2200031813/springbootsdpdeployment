package com.klef.jfsd.springboot.Project.service;

import com.klef.jfsd.springboot.Project.Entity.UserProfileEntity;
import com.klef.jfsd.springboot.Project.repository.UserProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserProfileService {

    @Autowired
    private UserProfileRepository userProfileRepository;

    public void createUserProfile(UserProfileEntity userProfile) {
        // Save the user profile to the database
        userProfileRepository.save(userProfile);
    }

    // Get user profile (assuming we only need the first available user profile for the student)
    public UserProfileEntity getUserProfile() {
        // In this case, assume the first profile or a default one should be fetched (e.g., by user ID if needed)
        return userProfileRepository.findAll().stream().findFirst().orElse(null); // You can replace this with more logic
    }

    // Update existing user profile
    public void updateUserProfile(UserProfileEntity userProfile) {
        userProfileRepository.save(userProfile); // Save the updated user profile to the database
    }

    // Optional: Get user profile by ID, if needed for specific use cases
    public UserProfileEntity getUserProfileById(Long id) {
        return userProfileRepository.findById(id).orElse(null);
    }
}
