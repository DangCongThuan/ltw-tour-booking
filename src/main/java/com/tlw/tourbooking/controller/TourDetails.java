package com.tlw.tourbooking.controller;

import com.tlw.tourbooking.model.Tour;
import com.tlw.tourbooking.services.TourService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "tour-details", value = "/tour-details")
public class TourDetails extends HttpServlet {
    public TourService tourService = new TourService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        if (id != null && id > 0) {
            Tour tour = tourService.getTour(id);
            request.setAttribute("tour", tour);
            request.getRequestDispatcher("tourDetails.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
