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

@WebServlet(name="adminProduct",urlPatterns={"/manage","/create"})
public class AddProductController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ProductDao productDao = new ProductDaoImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Product> productList = productDao.getAllProduct();
		request.setAttribute("productList", productList);
		request.setAttribute("isAdmin", true);
		RequestDispatcher rd = request.getRequestDispatcher("manageProduct.jsp");
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			
		Product p = new Product();
		String prdid = request.getParameter("pid");
		System.out.println(prdid);
		p.setPid(Integer.parseInt(prdid));
		p.setName(request.getParameter("name"));
		p.setCategory(request.getParameter("category"));
		p.setQty(Integer.parseInt(request.getParameter("qty").trim()));
		p.setDescription(request.getParameter("description"));
		p.setPrice(Double.parseDouble(request.getParameter("price").trim()));
		p.setImage(request.getParameter("file"));
		
		if(!(productDao.save(p)))
		{
			request.setAttribute("msg", "some error occured");
		}
		else{
			request.setAttribute("msg", "product saved sucessfully");
		}
		}
		catch(Exception ex){
			ex.printStackTrace();
			request.setAttribute("msg", "some error occured");
		}
		List<Product> productList = productDao.getAllProduct();
		request.setAttribute("productList", productList);
		request.setAttribute("isAdmin", true);
		RequestDispatcher rd =request.getRequestDispatcher("manageProduct.jsp");
		rd.forward(request, response);
	}

}
