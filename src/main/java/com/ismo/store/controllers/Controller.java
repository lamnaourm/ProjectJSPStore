package com.ismo.store.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ismo.store.metier.IMetier;
import com.ismo.store.metier.MetierDao;
import com.ismo.store.models.Categorie;

/**
 * Servlet implementation class Controller
 */
@WebServlet(name="controllers",urlPatterns={"/do/*"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IMetier<Categorie> metier = new MetierDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(request.getPathInfo().equals("/home")) {
			List<Categorie> cats = metier.getAll();
			
			request.setAttribute("categories", cats);
			
			request.getRequestDispatcher("/pages/listcats.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
