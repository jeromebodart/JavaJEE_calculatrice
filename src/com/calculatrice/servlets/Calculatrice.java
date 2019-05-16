package com.calculatrice.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.calculatrice.beans.Operation;

/**
 * Servlet implementation class Calculatrice
 */
@WebServlet("/Calculatrice")
public class Calculatrice extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public Calculatrice() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/calculatrice.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int numberOne = 0;
		if (request.getParameter("firstNumber") == null || request.getParameter("firstNumber").equals("")) {
			numberOne = 0;
		}
		else {
			numberOne = Integer.parseInt(request.getParameter("firstNumber"));
		}
		int numberTwo = 0;
		if (request.getParameter("secondNumber") == null || request.getParameter("secondNumber").equals("")) {
			numberTwo = 0;
		}
		else {
			numberTwo = Integer.parseInt(request.getParameter("secondNumber"));
		}
		Operation operation = new Operation(numberOne, request.getParameter("operator"),numberTwo);
		request.setAttribute("operation",operation);
		this.getServletContext().getRequestDispatcher("/WEB-INF/calculatrice.jsp").forward(request, response);
	}
}
