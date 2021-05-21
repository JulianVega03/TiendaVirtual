package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import services.ProductoDao;
import entities.Producto;

/**
 * Servlet implementation class AgregarCarritoController
 */
@WebServlet("/AgregarCarritoController")
public class AgregarCarritoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArrayList<Producto> productosCarro = new ArrayList<Producto>();	
	private ProductoDao pdao = new ProductoDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarCarritoController() {
        super();
    	
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idProducto = Integer.parseInt(request.getParameter("id_Producto"));
		
		Producto p = pdao.find(idProducto);
		productosCarro.add(p);
		
		HttpSession session = request.getSession();
		session.setAttribute("productosCarrito",productosCarro);
		
		response.sendRedirect("index.jsp");
	}

}
