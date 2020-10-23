package ass4.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ass4RewriteAss2P2
 */
@WebServlet("/Ass4RewriteAss2P2")
public class Ass4RewriteAss2P2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ass4RewriteAss2P2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String processor = request.getParameter("processor");
	    String moniter = request.getParameter("moniter");
	    String [] peripherals = request.getParameterValues("peripherals");
	    String access = "";
	    if (moniter != null) {
	        access += "Moniter <br />";
	    }
	    if (peripherals != null) {
	        for (int i = 0; i < peripherals.length; i++) {
	            access += peripherals[i] + "<br />";
	        }
	    }
	    if (access == "") {
	        access = "No access!";
	    }
	    if (processor == null) {
	        processor = "No processor select!";
	    }
	    
	    request.setAttribute("processor", ""+processor);
	    request.setAttribute("access", ""+access);
	    
	    String url = "ass4/rewriteAss2/p2/result.jsp";
	    request.getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
