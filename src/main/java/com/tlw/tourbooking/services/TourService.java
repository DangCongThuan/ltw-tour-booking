package com.tlw.tourbooking.services;

import java.util.Collection;

import com.tlw.tourbooking.model.Booking;
import com.tlw.tourbooking.model.Customer;
import com.tlw.tourbooking.model.Tour;

public class TourService {
	private TourDatabase database;
	
	public TourService() {
		database = TourDatabase.getInstance();
	}
	
	public Collection<Tour> getAllTours(){
		return database.getAllTours();
	}
	
	public Tour getTour(Long id){
		return database.getTourById(id);
	}
	
	public void saveCustomer(Customer customer){
		database.addCustomer(customer);
	}
	
	public void saveBooking(Booking booking){
		database.addBooking(booking);
	}
}
