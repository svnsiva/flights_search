package com.bellinfo.flights.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bellinfo.flights.dao.flights.AccountDetails;
import com.bellinfo.flights.model.AirportLocations;
import com.bellinfo.flights.model.FlightDetails;
import com.bellinfo.flights.model.FlightSearch;

@Controller
public class SearchController {
	public static boolean roundTrip;
	public static List<FlightDetails> list2;
	public static List<FlightDetails> returnList;
	public static FlightDetails bookedFd;
	public static FlightDetails bookedReturnFd;
	public static String originF,destF;
	public static String departDate,returnDate;
	public static int adults,childs;
	public static double finalPrice;
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String studentdata(Model model){
		roundTrip=false;
		
		return "search";
	}
	
	@RequestMapping(value="/two-way", method=RequestMethod.GET)
	public String studentdata3(Model model){
		roundTrip=true;
		return "two-way";
	}
	
	@RequestMapping(value="/finalPayment", method=RequestMethod.GET)
	public String studentdata5(Model model){
		model.addAttribute("cost", finalPrice);
		
		model.addAttribute("reason", "Flight Ticket - USD"+finalPrice);
		return "payment";
	}
	
	@RequestMapping(value="/book", method=RequestMethod.POST)
	public String studentdata3(@RequestParam String got, Model model){
		FlightDetails fd = null;
		
		got=got.substring(0,25);
		
		
		for(int i=0;i<list2.size();i++){
			//System.out.println(list2.get(i).getId());
			if(got.equalsIgnoreCase(list2.get(i).getId())){
				fd=list2.get(i);
				bookedFd=fd;
				bookedFd.setAdults(adults);
				bookedFd.setChilds(childs);
				bookedFd.setOrigin(originF);
				bookedFd.setDestination(destF);
				if(roundTrip)
					bookedFd.setRoundtrip("yes");
				else
					bookedFd.setRoundtrip("no");
			}
			
		}
		if(roundTrip){
			List<FlightDetails> list = FlightSearch.search(destF, originF, returnDate);
			returnList=list;
			
			int minimum = list.get(0).getDistance();
			List<FlightDetails> listSend =new ArrayList<FlightDetails>();
			for(int i=0;i<list.size();i++){
				if(list.get(i).getDistance()<minimum)
					minimum=list.get(i).getDistance();
			}
			for(int i=0;i<list.size();i++){
				if(minimum==list.get(i).getDistance())
					listSend.add(list.get(i));
			}
			model.addAttribute("list", listSend);
			AirportLocations al = new AirportLocations();
			model.addAttribute("fd", new FlightDetails());
			model.addAttribute("origin",al.search(originF));
			model.addAttribute("dest",al.search(destF));
			model.addAttribute("depart", returnDate);
			return "return-results";
		}
		else{
			model.addAttribute("departDate", departDate);
			double cost= Double.parseDouble(bookedFd.getCost().substring(3));
			finalPrice = cost*adults+cost*childs*0.75;
			DecimalFormat df = new DecimalFormat("#.##");      
			finalPrice = Double.valueOf(df.format(finalPrice));
			model.addAttribute("finalPrice","Flight Tickets - USD"+finalPrice);
			model.addAttribute("one", bookedFd);
			return "one-summary";
		}
		/*model.addAttribute("cost", fd.getCost());
		
		model.addAttribute("reason", "Flight Ticket -"+fd.getCost());
		return "payment";*/
	}
	
	
	
	@RequestMapping(value="/returnBooking", method=RequestMethod.POST)
	public String studentdata4(@RequestParam String got, Model model){
		FlightDetails fd = null;
		
		got=got.substring(0,25);
		
		
		for(int i=0;i<returnList.size();i++){
			//System.out.println(list2.get(i).getId());
			if(got.equalsIgnoreCase(returnList.get(i).getId())){
				fd=list2.get(i);
				bookedReturnFd=fd;
				bookedReturnFd.setAdults(adults);
				bookedReturnFd.setChilds(childs);
				bookedReturnFd.setOrigin(destF);
				bookedReturnFd.setDestination(originF);
				if(roundTrip)
					bookedFd.setRoundtrip("yes");
				else
					bookedFd.setRoundtrip("no");
			}
			
		}
		model.addAttribute("departDate", departDate);
		model.addAttribute("returnDate",returnDate);
		double cost= Double.parseDouble(bookedFd.getCost().substring(3));
		double retrunCost = Double.parseDouble(bookedReturnFd.getCost().substring(3));
		finalPrice = cost*adults+cost*childs*0.75+retrunCost*adults+retrunCost*childs*0.75;
		DecimalFormat df = new DecimalFormat("#.##");      
		finalPrice = Double.valueOf(df.format(finalPrice));
		//System.out.println(finalPrice);
		model.addAttribute("finalPrice",finalPrice);
		model.addAttribute("one", bookedFd);
		model.addAttribute("two",bookedReturnFd);
		
		return "round-summary";
	}	
	
	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String studentdata2(@RequestParam String origin,String dest,String depart,String reverse,String adult,
			String child,Model model){
		//System.out.println(origin+dest+depart+reverse+adult+child);
		FlightSearch fs = new FlightSearch();
		departDate=depart;
		returnDate = reverse;
		List<FlightDetails> list = FlightSearch.search(origin, dest, depart);
		list2=list;
		adults=Integer.parseInt(adult);
		childs=Integer.parseInt(child);
		originF=origin;
		destF=dest;
		int minimum = list.get(0).getDistance();
		List<FlightDetails> listSend =new ArrayList<FlightDetails>();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getDistance()<minimum)
				minimum=list.get(i).getDistance();
		}
		for(int i=0;i<list.size();i++){
			if(minimum==list.get(i).getDistance())
				listSend.add(list.get(i));
		}
		model.addAttribute("list", listSend);
		AirportLocations al = new AirportLocations();
		model.addAttribute("fd", new FlightDetails());
		model.addAttribute("origin",al.search(origin));
		model.addAttribute("dest",al.search(dest));
		model.addAttribute("depart", depart);
		return "flight-results";
	}
	
	
	

}
