package com.tlw.tourbooking.controller;

import com.tlw.tourbooking.model.Tour;
import com.tlw.tourbooking.services.TourService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

@WebServlet(name = "list-tours", value = "/list-tours")
public class ListTours extends HttpServlet {
    public TourService tourService = new TourService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Tour> tourList = tourService.getAllTours();
        request.setAttribute("tourList", tourList);
        request.getRequestDispatcher("listTours.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
