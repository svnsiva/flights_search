package com.bellinfo.flights.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bellinfo.flights.dao.flights.AccountDetails;
import com.bellinfo.flights.email.SendMailTLS;

@Controller
@RequestMapping(value="/contact")
public class ContactController {

	
		@RequestMapping(method=RequestMethod.GET)
		public String studentdata(Model model){
			AccountDetails account = new AccountDetails();
			
			model.addAttribute("account",account);
			//model.addAttribute("message", "Welcome... to the world of svnsiva");
			return "contact";
		}
		
		@RequestMapping(method=RequestMethod.POST)
		public String studentdata2(@RequestParam String name, String number, String email, String messageText,Model model){
			
			SendMailTLS se = new SendMailTLS();
			String messageEmail = "Query from user: \n"+"\n Name - "+name+
					"\nContact Number - "+number+
					"\nContact Email - "+email+
					"\nMessage - "+messageText;
			se.sendingEmail("venkat2877@gmail.com", messageEmail);
			
			model.addAttribute("message", "Message sent successfully. You will get response in 24-48hrs");
			return "contact";
		}
		

	
	
}
