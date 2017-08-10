package com.bellinfo.flights.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bellinfo.flights.dao.bills.CarBills;
import com.bellinfo.flights.dao.bills.CarBillsSave;
import com.bellinfo.flights.dao.bills.FlightBills;
import com.bellinfo.flights.dao.bills.FlightBillsSave;
import com.bellinfo.flights.email.SendMailTLS;
import com.bellinfo.flights.model.FlightDetails;


@Controller
public class PaymentController {
	
	@RequestMapping(value="/payment", method=RequestMethod.POST)
	public String bills(@ModelAttribute CarBills cb,Model model){
		SendMailTLS se = new SendMailTLS();
		CarBillsSave cbs = new CarBillsSave();
		FlightBillsSave fbs  = new FlightBillsSave();
		System.out.println(cb.toString());
		if(cb.getAmount().contains("Car")){
			cbs.save(cb);
			String messageText="\n Car Reservation details \n\n";
			messageText=messageText+"\n"+"Name - "+cb.getName()+
					"\n Phone Number -"+cb.getPhone()+
					"\n Amount -"+cb.getAmount();
			
			se.sendingEmail(LoginController.logedAd.getEmail(), messageText);
		}else{
			FlightBills fb = new FlightBills();
			//fb.setCb(cb);
			fb.setAmount(cb.getAmount());
			fb.setCard(cb.getCard());
			fb.setCvv(cb.getCvv());
			fb.setMm(cb.getMm());
			fb.setName(cb.getName());
			fb.setPhone(cb.getPhone());
			fb.setYy(cb.getYy());
			
			int sum=SearchController.bookedFd.getAdults()+SearchController.bookedFd.getChilds();
			SearchController.bookedFd.setAdults(sum);
			fb.setFd(SearchController.bookedFd);
			FlightDetails fd = SearchController.bookedFd;
			fbs.save(fb);
			
			String messageText="\n Flight Reservation details \n\n";
			messageText=messageText+"\n"+"Name - "+cb.getName()+
					"\n Phone Number -"+cb.getPhone()+
					"\n Amount -"+cb.getAmount()+"\n \n";
			if(SearchController.roundTrip)
				messageText = messageText+"Roundtrip Journey";
			else
				messageText = messageText+"One way Journey";
			messageText =messageText+"\nOrigin - "+fd.getOrigin()+
					"\nDestination - "+fd.getDestination()+
					"\nNumber of passengers- "+fd.getAdults();
					
			se.sendingEmail(LoginController.logedAd.getEmail(), messageText);
			
			
		}
		
		return "account";
	}
}
