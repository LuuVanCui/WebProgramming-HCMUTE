package ass4.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ass4RewriteAss1
 */
@WebServlet("/Ass4RewriteAss1")
public class Ass4RewriteAss1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ass4RewriteAss1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String quantity = request.getParameter("quantity");
		
		if (isNumeric(quantity)) {
			request.getRequestDispatcher("ass4/rewriteAss1/res.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("ass4/rewriteAss1/error.jsp").forward(request, response);
		}
	}

	public static boolean isNumeric(String str) { 
		  try {  
		    Integer.parseInt(str);
		    return true;
		  } catch(NumberFormatException e){  
		    return false;  
		  }  
		}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
