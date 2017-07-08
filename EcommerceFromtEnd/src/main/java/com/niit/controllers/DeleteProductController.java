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
@WebServlet(name="viewproduct", urlPatterns="/delete")
public class DeleteProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductDao productDao = new ProductDaoImpl();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str= request.getParameter("pid");
		int id=Integer.parseInt(str);
		productDao.deleteById(id);
		request.setAttribute("msg", "product deleted sucessfully");
		List<Product> productList = productDao.getAllProduct();
		request.setAttribute("productList", productList);
		request.setAttribute("isAdmin", true);
		RequestDispatcher rd = request.getRequestDispatcher("manageProduct.jsp");
		rd.forward(request, response);
	}


	

}
