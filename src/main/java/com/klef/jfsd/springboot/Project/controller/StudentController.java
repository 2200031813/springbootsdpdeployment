package com.klef.jfsd.springboot.Project.controller;

import com.klef.jfsd.springboot.Project.Entity.JobApplicationEntity;
import com.klef.jfsd.springboot.Project.Entity.JobEntity;
import com.klef.jfsd.springboot.Project.Entity.UserEntity;
import com.klef.jfsd.springboot.Project.Entity.UserProfileEntity;
import com.klef.jfsd.springboot.Project.service.JobService;
import com.klef.jfsd.springboot.Project.service.UserProfileService;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.Project.repository.JobApplicationRepository;
import com.klef.jfsd.springboot.Project.repository.UserRepository;

import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private JobService jobService;
    
    @Autowired
    private UserProfileService userProfileService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private JobApplicationRepository jobApplicationRepository;

    // Show all job opportunities
    @GetMapping("/viewJobs")
    public ModelAndView viewJobOpportunities() {
        List<JobEntity> jobs = jobService.getAllJobs();
        ModelAndView mv = new ModelAndView("viewJobs");
        mv.addObject("jobs", jobs);
        return mv;
    }

    // Serve the job application page
    @GetMapping("/apply-job")
    public String showApplicationPage() {
        return "application"; // Ensure application.jsp exists in the views folder
    }

    // Handle job application submission
    @PostMapping("/apply-job")
    public String handleApplication(@ModelAttribute JobApplicationEntity application, Model model) {
        try {
            // Save the job application to the database
            jobApplicationRepository.save(application);
            return "redirect:/student/viewJobs"; // Redirect to the jobs page after submission
        } catch (Exception e) {
            model.addAttribute("error", "Error occurred while submitting the application.");
            return "application"; // Reload the application form with the error message
        }
    }

    @GetMapping("/create-profile")
    public String showCreateProfilePage(Model model) {
        model.addAttribute("userProfile", new UserProfileEntity());  // Create a new empty UserProfileEntity object
        return "createProfile"; // This renders the createProfile.jsp page
    }

    @PostMapping("/create-profile")
    public String createUserProfile(@ModelAttribute UserProfileEntity userProfile, 
                                     @RequestParam("resume") MultipartFile resume, 
                                     Model model) {
        try {
            // Log the incoming profile data for debugging purposes
            System.out.println("Received user profile: " + userProfile);

            // Process the resume file if uploaded
            if (!resume.isEmpty()) {
                // Ensure that the resume is saved in a valid folder
                String resumeDirectory = "D:\resumes";
                File directory = new File(resumeDirectory);
                if (!directory.exists()) {
                    directory.mkdirs(); // Create the folder if it doesn't exist
                }

                String resumePath = resumeDirectory + resume.getOriginalFilename();
                File destinationFile = new File(resumePath);
                
                // Save the resume to the directory
                resume.transferTo(destinationFile); 
                userProfile.setResumeUrl(resumePath);  // Set the resume URL in the entity
                System.out.println("Resume saved at: " + resumePath);  // Log resume path for debugging
            }

            // Check if required fields are populated (optional)
            if (userProfile.getFirstName() == null || userProfile.getFirstName().isEmpty()) {
                model.addAttribute("error", "First Name is required.");
                return "createProfile"; // Stay on the form page if validation fails
            }

            // Save the UserProfileEntity to the database
            userProfileService.createUserProfile(userProfile);
            System.out.println("Profile saved: " + userProfile);  // Log for debugging

            // Add a success message to the model
            model.addAttribute("message", "Profile created successfully!");
            return "redirect:/student/profile"; // Redirect to the profile page after success
        } catch (Exception e) {
            e.printStackTrace();  // Print the exception for debugging
            model.addAttribute("error", "Error occurred while creating the profile: " + e.getMessage());
            return "createProfile"; // Stay on the create profile page with error message
        }
    }


    // Show the User Profile page (after successful profile creation)
    @GetMapping("/profile")
    public String showUserProfilePage(Model model) {
        UserProfileEntity userProfile = userProfileService.getUserProfile(); // Get the profile
        model.addAttribute("userProfile", userProfile);
        return "profile"; // This will render the profile.jsp page
    }


    // Show the employer update page
    @GetMapping("/update-employer")
    public String showUserUpdatePage(@RequestParam Long id, Model model) {
        // Fetch the user details by id
        UserEntity user = userRepository.findById(id).orElse(null);
        if (user != null) {
            model.addAttribute("user", user);  // Add the user entity to the model for rendering
            return "updateEmployer";  // Render the updateEmployer.jsp page
        }
        return "redirect:/login";  // Redirect if user not found
    }

    // Handle employer profile update
    @PostMapping("/update-employer")
    public String updateEmployerProfile(@ModelAttribute UserEntity user, Model model) {
        try {
            // Find the existing user entity from the database
            UserEntity existingUser = userRepository.findById(user.getId()).orElse(null);
            if (existingUser != null) {
                // Update the user's details with the new values from the form
                existingUser.setUsername(user.getUsername());
                existingUser.setEmail(user.getEmail());
                existingUser.setPassword(user.getPassword());  // Save password as plain text

                // Save the updated user to the database
                userRepository.save(existingUser);

                model.addAttribute("message", "Employer profile updated successfully!");
                return "redirect:/home";  // Redirect to the dashboard after successful update
            } else {
                model.addAttribute("error", "User not found.");
                return "updateEmployer";  // Stay on the update page if user not found
            }
        } catch (Exception e) {
            model.addAttribute("error", "Error occurred while updating employer profile.");
            return "updateEmployer";  // Stay on the update page if an error occurs
        }
    }
}
