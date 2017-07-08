package com.niit.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Product;
@WebServlet(name="viewproduct", urlPatterns="/products")
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDao productDao = new ProductDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Product> productList = productDao.getAllProduct();
		request.setAttribute("productList", productList);
		request.setAttribute("isAdmin", false);
		RequestDispatcher rd = request.getRequestDispatcher("manageProduct.jsp");
		rd.forward(request, response);
	}

}
