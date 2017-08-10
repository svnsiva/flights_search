package com.bellinfo.flights.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.support.BindingAwareModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bellinfo.flights.dao.flights.AccountDetails;
import com.bellinfo.flights.dao.flights.AccountDetailsSaving;

@Controller
public class AccountController {
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String studentdata(Model model){
		AccountDetails account4 = new AccountDetails();
		
		model.addAttribute("account4",account4);
		
		//model.addAttribute("message", "Welcome... to the world of svnsiva");
		return "register-page";
	}
	
	@RequestMapping(value="/register-put",method=RequestMethod.POST)
	public String postStudentData(@Valid @ModelAttribute AccountDetails account4, BindingResult result, Model model){
	System.out.println("hello");
		if(result.hasErrors()){
			return "register-page";
		}
		AccountDetailsSaving ads = new AccountDetailsSaving();
		ads.enteringAccountData(account4);
		model.addAttribute("message", "Registration Successful");
		return "home";
	}
}
