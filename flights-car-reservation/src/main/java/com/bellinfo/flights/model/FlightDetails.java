package com.bellinfo.flights.model;

import javax.persistence.Entity;
import javax.persistence.Id;


public class FlightDetails {
	
	private String id;
	private String flightNum;
	private int distance;
	private String airline;
	private String cost;
	private String roundtrip;
	public String getRoundtrip() {
		return roundtrip;
	}
	public void setRoundtrip(String roundtrip) {
		this.roundtrip = roundtrip;
	}
	
	
	private int duration; 
	private String departTime;
	private String arrivalTime;
	private String departTerm;
	private String arrivalTerm;
	private String origin;
	private String destination;
	private int adults;
	private int childs;
	public int getAdults() {
		return adults;
	}
	
	public void setAdults(int adults) {
		this.adults = adults;
	}
	public int getChilds() {
		return childs;
	}
	public void setChilds(int childs) {
		this.childs = childs;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	
	public String getDestination() {
		return destination;
	}
	
	public String getOrigin() {
		return origin;
	}
	
	public void setDuration(int duration) {
		this.duration = duration;
	}
	
	public int getDuration() {
		return duration;
	}
	
	public String getDepartTerm() {
		return departTerm;
	}
	public void setDepartTerm(String departTerm) {
		this.departTerm = departTerm;
	}
	public String getArrivalTerm() {
		return arrivalTerm;
	}
	public void setArrivalTerm(String arrivalTerm) {
		this.arrivalTerm = arrivalTerm;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFlightNum() {
		return flightNum;
	}
	public void setFlightNum(String flightNum) {
		this.flightNum = flightNum;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getDepartTime() {
		return departTime;
	}
	public void setDepartTime(String departTime) {
		this.departTime = departTime;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	@Override
	public String toString() {
		return "FlightDetails [id=" + id + ", flightNum=" + flightNum
				+ ", distance=" + distance + ", airline=" + airline + ", cost="
				+ cost + ", duration=" + duration + ", departTime="
				+ departTime + ", arrivalTime=" + arrivalTime + ", departTerm="
				+ departTerm + ", arrivalTerm=" + arrivalTerm + "]";
	}
	
}
