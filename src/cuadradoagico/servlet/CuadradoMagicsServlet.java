package cuadradoagico.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CuadradoMagicsServlet
 */
@WebServlet("/CuadradoMagicsServlet")
public class CuadradoMagicsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CuadradoMagicsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String cor00 = request.getParameter("cor00");
		String cor01 = request.getParameter("cor01");
		String cor02 = request.getParameter("cor02");
		String cor10 = request.getParameter("cor10");
		String cor11 = request.getParameter("cor11");
		String cor12 = request.getParameter("cor12");
		String cor20 = request.getParameter("cor20");
		String cor21 = request.getParameter("cor21");
		String cor22 = request.getParameter("cor22");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
