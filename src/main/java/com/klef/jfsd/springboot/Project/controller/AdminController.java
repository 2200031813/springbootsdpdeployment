package com.klef.jfsd.springboot.Project.controller;

import com.klef.jfsd.springboot.Project.Entity.AdminEntity;
import com.klef.jfsd.springboot.Project.Entity.EmployerEntity;
import com.klef.jfsd.springboot.Project.Entity.UserEntity;
import com.klef.jfsd.springboot.Project.repository.AdminRepository;
import com.klef.jfsd.springboot.Project.service.EmployerService;
import com.klef.jfsd.springboot.Project.service.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    @Autowired
    private AdminRepository adminRepository;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private EmployerService employerService;

    // Serve the Admin registration page
    @GetMapping("/admin/register")
    public String showAdminRegisterPage() {
        return "adminRegister"; // Admin register page
    }

    // Handle Admin registration
    @PostMapping("/admin/register")
    public String handleAdminRegister(@ModelAttribute AdminEntity admin, Model model) {
        // Save the admin to the database
        adminRepository.save(admin);
        return "redirect:/admin/login"; // Redirect to admin login page after successful registration
    }

    // Serve the Admin login page
    @GetMapping("/admin/login")
    public String showAdminLoginPage() {
        return "adminLogin"; // Render the adminLogin.jsp page
    }

    // Handle Admin login verification
    @PostMapping("/admin/login")
    public String handleAdminLogin(@RequestParam String username, @RequestParam String password, Model model) {
        // Verify admin credentials from the database
        AdminEntity admin = adminRepository.findById(username).orElse(null);

        if (admin != null && admin.getPassword().equals(password)) {
            // Login successful, redirect to admin dashboard (new URL)
            return "redirect:/admin/dashboard"; // Redirect to admin dashboard
        } else {
            // Login failed
            model.addAttribute("error", "Invalid Username or Password!");
            return "adminLogin"; // Reload login page with error message
        }
    }

    // Serve the Admin Dashboard page after successful login
    @GetMapping("/admin/dashboard")
    public String showAdminDashboard() {
        return "adminDashboard"; // Render the adminDashboard.jsp page
    }
    
    @GetMapping("/admin/manage-users")
    public ModelAndView viewUsers() {
        List<UserEntity> users = userService.getAllUsers();
        ModelAndView mv = new ModelAndView("manageUsers");
        mv.addObject("users", users);
        return mv;
    }
    // Redirect to update user page
    @GetMapping("/admin/update-user")
    public ModelAndView showUpdateUserPage(@RequestParam Long id) {
        UserEntity user = userService.getUserById(id);
        ModelAndView mv = new ModelAndView("updateUser");
        mv.addObject("user", user);
        return mv;
    }
    // Process updated user details
    @PostMapping("/admin/update-user")
    public String updateUser(@ModelAttribute UserEntity user) {
        userService.updateUser(user);
        return "redirect:/admin/manage-users";
    }
    // Delete user
    @PostMapping("/admin/delete-user")
    public String deleteUser(@RequestParam Long id) {
        userService.deleteUserById(id);
        return "redirect:/admin/manage-users";
    }
    
    
    @GetMapping("/admin/manage-companies")
    public ModelAndView viewEmployers() {
        List<EmployerEntity> employers = employerService.getAllEmployers();
        ModelAndView mv = new ModelAndView("manageCompanies"); // JSP page to display all employers
        mv.addObject("employers", employers);
        return mv;
    }

//    // Redirect to update employer page
//    @GetMapping("/admin/update-employer")
//    public ModelAndView showUpdateEmployerPage(@RequestParam String empid) {
//        EmployerEntity employer = employerService.getEmployerById(empid)
//                .orElseThrow(() -> new RuntimeException("Employer not found"));
//        ModelAndView mv = new ModelAndView("updateEmployer"); // JSP page to edit employer details
//        mv.addObject("employer", employer);
//        return mv;
//    }
    
    
//    @GetMapping("/admin/update-employer")
//    public ModelAndView showUpdateEmployerPage(@RequestParam String empid) {
//       EmployerEntity employer = employerService.getEmployerById(empid);
//        ModelAndView mv = new ModelAndView("updateEmployer");
//        mv.addObject("employer", employer);
//        return mv;
//    }
//
//    // Process updated employer details
//    @PostMapping("/admin/update-employer")
//    public String updateEmployer(@ModelAttribute EmployerEntity employer) {
//        employerService.saveEmployer(employer); // Save updated employer data
//        return "redirect:/admin/manage-companies"; // Redirect to the manage employers page
//    }

    @GetMapping("/admin/update-employer")
    public ModelAndView showUpdateEmployerPage(@RequestParam String empid) {
        EmployerEntity employer = employerService.getEmployerById(empid);
        ModelAndView mv = new ModelAndView("updateEmployer");
        mv.addObject("employer", employer);
        return mv;
    }
    // Process updated user details
    @PostMapping("/admin/update-employer")
    public String updateEmployer(@ModelAttribute EmployerEntity employer) {
        employerService.saveEmployer(employer);
        return "redirect:/admin/manage-companies";
    }
    
    
    
    
    
    // Delete employer
    @PostMapping("/admin/delete-employer")
    public String deleteEmployer(@RequestParam String empid) {
        employerService.deleteEmployer(empid); // Delete the employer by empId
        return "redirect:/admin/manage-companies"; // Redirect to the manage employers page after deletion
    }
    
    
    
    
    
    
 // View all employers
//    @GetMapping("/manage-companies")
//    public ModelAndView viewEmployers() {
//        List<EmployerEntity> employer = employerService.getAllEmployers();
//        ModelAndView mv = new ModelAndView("manageCompanies"); // JSP page to display all employers
//        mv.addObject("employer", employer);
//        return mv;
//    }	
//
//    // Redirect to update employer page
//    @GetMapping("/update-employer")
//    public ModelAndView showUpdateEmployerPage(@RequestParam String empid) {
//        EmployerEntity employer = employerService.getEmployerById(empid)
//                .orElseThrow(() -> new RuntimeException("Employer not found"));
//        ModelAndView mv = new ModelAndView("updateEmployer"); // JSP page to edit employer details
//        mv.addObject("employer", employer);
//        return mv;
//    }
//
//    // Process updated employer details
//    @PostMapping("/update-employer")
//    public String updateEmployer(@ModelAttribute EmployerEntity employer) {
//        employerService.saveEmployer(employer); // Save updated employer data
//        return "redirect:/admin/manage-companies"; // Redirect to the manage employers page
//    }

//    // Delete employer
//    @PostMapping("/delete-employer")
//    public String deleteEmployer(@RequestParam String empid) {
//        employerService.deleteEmployer(empid); // Delete the employer by empId
//        return "redirect:/admin/manage-companies"; // Redirect to the manage employers page
//    }
}
