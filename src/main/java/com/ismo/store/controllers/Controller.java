package com.ismo.store.controllers;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

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
@WebServlet(name = "controllers", urlPatterns = { "/do/*" })
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		switch (request.getPathInfo()) {
		case "/home": 
			List<Categorie> cats = metier.getAll();
			request.setAttribute("categories", cats);
			request.getRequestDispatcher("/pages/listcats.jsp").forward(request, response);
			break;
		case "/addcat":
			request.getRequestDispatcher("/pages/addcat.jsp").forward(request, response);
			break;
		case "/savecat":
			String nomcat = request.getParameter("nom");
			String urlImage = request.getParameter("image");
			Categorie c = new Categorie();
			c.setName(nomcat);
			c.setImage(urlImage);
			c.setCreationAt(LocalDateTime.now().toString());
			c.setUpdatedAt(LocalDateTime.now().toString());
			
			List<Categorie> list = metier.getAll();
			int idcat = list.get(list.size()-1).getId();
			c.setId(++idcat);
			if(metier.save(c)) {
				request.setAttribute("status", "1");
			}else {
				request.setAttribute("status", "0");
			}
			request.getRequestDispatcher("/pages/addcat.jsp").forward(request, response);
			break;
		default:
			request.getRequestDispatcher("/pages/error.jsp").forward(request, response);
			break;	
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
