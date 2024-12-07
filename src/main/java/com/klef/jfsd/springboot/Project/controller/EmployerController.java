package com.klef.jfsd.springboot.Project.controller;

import com.klef.jfsd.springboot.Project.Entity.EmployerEntity;
import com.klef.jfsd.springboot.Project.Entity.JobApplicationEntity;
import com.klef.jfsd.springboot.Project.Entity.JobEntity;
import com.klef.jfsd.springboot.Project.repository.EmployerRepository;
import com.klef.jfsd.springboot.Project.repository.JobApplicationRepository;
import com.klef.jfsd.springboot.Project.repository.JobRepository;
import com.klef.jfsd.springboot.Project.service.JobApplicantService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployerController {

	@Autowired
    private JobApplicationRepository jobApplicationRepository;
	
    @Autowired
    private EmployerRepository employerRepository;
    
    @Autowired
    private JobRepository jobRepository;
    
    @Autowired
    private JobApplicantService jobApplicantService;

    // Serve the Employer registration page
    @GetMapping("/employer/register")
    public String showEmployerRegisterPage() {
        return "employerRegister"; // Employer register page
    }

    // Handle Employer registration
    @PostMapping("/employer/register")
    public String handleEmployerRegister(@ModelAttribute EmployerEntity employer, Model model) {
        // Save the employer to the database
        employerRepository.save(employer);
        return "redirect:/employer/login"; // Redirect to employer login page after successful registration
    }

    // Serve the Employer login page
    @GetMapping("/employer/login")
    public String showEmployerLoginPage() {
        return "employerLogin"; // Render the employerLogin.jsp page
    }

    // Handle Employer login verification
    @PostMapping("/employer/login")
    public String handleEmployerLogin(@RequestParam String empid, @RequestParam String password, Model model) {
        // Verify employer credentials from the database
        EmployerEntity employer = employerRepository.findById(empid).orElse(null);

        if (employer != null && employer.getPassword().equals(password)) {
            // Login successful, redirect to employer dashboard (new URL)
            return "redirect:/employer/dashboard"; // Redirect to employer dashboard
        } else {
            // Login failed
            model.addAttribute("error", "Invalid Employer ID or Password!");
            return "employerLogin"; // Reload login page with error message
        }
    }

    
    
 // Show employer dashboard (you can modify this to show different content based on what you need)
    @GetMapping("/employer/dashboard")
    public String showEmployerDashboard() {
        return "dashboard"; // This will be the employer's dashboard page
    }

    // Show the post job form
    @GetMapping("/employer/post-job")
    public String showPostJobForm() {
        return "postJob"; // Renders the post job form (postJob.jsp)
    }

    // Handle job posting form submission
    @PostMapping("/employer/post-job")
    public String handlePostJob(@ModelAttribute JobEntity job, Model model) {
        // Save the job listing to the database
        jobRepository.save(job);

        // Add a success message to the model
        model.addAttribute("message", "Job posted successfully!");

        // Redirect to the employer dashboard (or another page you want to show)
        return "redirect:/employer/dashboard";
    }
   
    @GetMapping("/employer/view-applicants")
    public ModelAndView viewApplicants(@RequestParam(value = "branch", required = false) String branch) {
        List<JobApplicationEntity> applicants;

        if (branch != null && !branch.isEmpty()) {
            applicants = jobApplicantService.getApplicantsByBranch(branch);
        } else {
            applicants = jobApplicantService.getAllApplications();
        }

        ModelAndView mv = new ModelAndView("viewApplicants");
        mv.addObject("applicants", applicants);
        mv.addObject("selectedBranch", branch);
        return mv;
    }
    
    @GetMapping("/employer/update-profile")
    public String showEmployerUpdatePage(@RequestParam String empid, Model model) {
        EmployerEntity employer = employerRepository.findById(empid).orElse(null);
        if (employer != null) {
            model.addAttribute("employer", employer);
            return "updateProfile";  // Renders the updateProfile.jsp page
        }
        return "redirect:/employer/login";  // Redirect if employer not found
    }

    @PostMapping("/updateProfile")
    public String updateEmployerProfile(@ModelAttribute EmployerEntity employer, Model model) {
        try {
            // Validate if password and confirm password match
            if (!employer.getPassword().equals(employer.getConfirmPassword())) {
                model.addAttribute("error", "Passwords do not match.");
                return "updateProfile";  // Stay on the update page if passwords don't match
            }

            // Find the existing employer entity
            EmployerEntity existingEmployer = employerRepository.findById(employer.getEmpid()).orElse(null);
            if (existingEmployer != null) {
                // Update the employer's details
                existingEmployer.setMail(employer.getMail());
                existingEmployer.setPassword(employer.getPassword());  // Save password in plain text

                // Save the updated employer
                employerRepository.save(existingEmployer);

                model.addAttribute("message", "Profile updated successfully!");
                return "redirect:/employer/dashboard";  // Redirect to the dashboard after successful update
            } else {
                model.addAttribute("error", "Employer not found.");
                return "updateProfile";  // Stay on the update page if employer not found
            }
        } catch (Exception e) {
            model.addAttribute("error", "Error occurred while updating profile.");
            return "updateProfile";  // Stay on the update page if an error occurs
        }
    }

    
}
