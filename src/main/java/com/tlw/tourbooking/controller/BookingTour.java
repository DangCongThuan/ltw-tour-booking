package com.tlw.tourbooking.controller;

import com.tlw.tourbooking.model.Booking;
import com.tlw.tourbooking.model.Customer;
import com.tlw.tourbooking.model.Tour;
import com.tlw.tourbooking.services.TourService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "booking-tour", value = "/booking-tour")
public class BookingTour extends HttpServlet {
    public TourService tourService = new TourService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        if (id != null && id > 0) {
            Tour tour = tourService.getTour(id);
            request.setAttribute("tour", tour);
            request.getRequestDispatcher("bookingTour.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Date departureDate = null;
        Tour tour = null;
        Long tourId = Long.valueOf(request.getParameter("tourId"));
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dateInput = request.getParameter("departureDate");
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
             departureDate = format.parse(dateInput);
        } catch (java.text.ParseException e) {
            System.out.println(e.getMessage());
        }
        int noAdults = Integer.parseInt(request.getParameter("noAdults"));
        int noChildren = Integer.parseInt(request.getParameter("noChildren"));
        Customer customer = new Customer(name, address, email, phone);
        tourService.saveCustomer(customer);
        if (tourId != null) {
            tour = tourService.getTour(tourId);
        }
        Booking booking = new Booking(customer,departureDate, noAdults, noChildren, tour);
        tourService.saveBooking(booking);
        request.setAttribute("booking", booking);
        request.getRequestDispatcher("confirm.jsp").forward(request, response);
    }
}
