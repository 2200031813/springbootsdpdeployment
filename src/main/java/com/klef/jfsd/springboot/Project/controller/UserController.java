package com.klef.jfsd.springboot.Project.controller;

import com.klef.jfsd.springboot.Project.Entity.UserEntity;
import com.klef.jfsd.springboot.Project.repository.UserRepository;
import com.klef.jfsd.springboot.Project.service.EmailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private EmailService emailService;
    
    

    // Serve the registration page
    @GetMapping("/register")
    public String showRegisterPage() {
        return "register"; // Returns the register.jsp page
    }

    @PostMapping("/register")
    public String handleRegister(@ModelAttribute UserEntity user, Model model) {
        // Save the user to the database
        userRepository.save(user);

//        // Send a welcome email to the user
//        String subject = "Welcome to Placement Portal!";
//        String body = "Dear " + user.getUsername() + ",\n\n" +
//                      "Thank you for registering with us. We are excited to have you onboard.\n\n" +
//                      "Best Regards,\nPlacement Portal Team";
//        emailService.sendEmail(user.getEmail(), subject, body);

        return "redirect:/login"; // Redirect to login page after successful registration
    }

    // Serve the login page
    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; // Returns the login.jsp page
    }

    // Handle login verification
    @PostMapping("/login")
    public String handleLogin(@RequestParam(required = false) String username, 
                               @RequestParam(required = false) String password, Model model) {
        // Ensure username is not null or empty before attempting to query the database
        if (username == null || username.isEmpty()) {
            model.addAttribute("error", "Username is required.");
            return "login";
        }

        UserEntity user = userRepository.findByUsername(username);

        if (user != null && user.getPassword().equals(password)) {
            // If login is successful, redirect to the home/dashboard page
            return "redirect:/home"; // Redirects to the dashboard
        } else {
            // If login failed, show error message on login page
            model.addAttribute("error", "Invalid username or password!");
            return "login"; // Returns the login.jsp page again with the error message
        }
    }

    // Serve the home/dashboard page
    @GetMapping("/home")
    public String showDashboard() {
        return "home"; // Returns the home.jsp page (dashboard)
    }
}
