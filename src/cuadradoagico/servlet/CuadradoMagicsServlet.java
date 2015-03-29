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
	private int [][]cuadrado;
	private boolean gano;
	met_Cuadrado met = new met_Cuadrado();
	
    public CuadradoMagicsServlet() {
        super();
        this.cuadrado =new int[3][3];
        this.gano=false;
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
		
		
		cuadrado[0][0]=Integer.parseInt(cor00);
		cuadrado[0][1]=Integer.parseInt(cor01);
		cuadrado[0][2]=Integer.parseInt(cor02);
		cuadrado[1][0]=Integer.parseInt(cor10);
		cuadrado[1][1]=Integer.parseInt(cor11);
		cuadrado[1][2]=Integer.parseInt(cor12);
		cuadrado[2][0]=Integer.parseInt(cor20);
		cuadrado[2][1]=Integer.parseInt(cor21);
		cuadrado[2][2]=Integer.parseInt(cor22);
		

		gano= met.sumar(cuadrado);
		if(gano==true){
			request.setAttribute("mensaje", "Felicidades, has completado el cuadrado mágico!!!");	
		}else {
			request.setAttribute("mensaje", "Has fallado,inténtalo nuevamente!!!");
		}
		request.getRequestDispatcher("/Cuadradojsp.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	

	


}
