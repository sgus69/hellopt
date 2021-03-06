package com.bit.hellopt.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bit.hellopt.service.user.UserProfileService;
import com.bit.hellopt.service.user.UserService;
import com.bit.hellopt.vo.user.User;
import com.google.gson.Gson;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	UserService userService;
	@Autowired
	UserProfileService profileService;
	
	public UserController(UserService service) {
		this.userService = service;
	}
	
	@PostMapping("/user")
	public String registerUser(@ModelAttribute @Valid User user, BindingResult bindingResult, @RequestParam MultipartFile file) {
		
		if(bindingResult.hasErrors()) {
			logger.info("signupform: user validation error");
			return "signupForm";
		} else {
			userService.regiserUser(user);
			if(!file.isEmpty()) {
				profileService.insertProfile(user, file);
			}
			
		}
		return "redirect:/";
	}
	
	@GetMapping("/user/registrationform")
	public String getRegistrationform(Model model) {
		model.addAttribute("user", new User());
		return "signupForm";
	}
	
	@PostMapping("/user/idcheck")
	@ResponseBody
	public int isUserId(@RequestBody String userId) {
		Gson gson = new Gson();
		User user = gson.fromJson(userId, User.class);
		return userService.isUser(user.getUserId());
	}
}
