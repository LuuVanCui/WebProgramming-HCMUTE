package ass4.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ass4
 */
@WebServlet("/Ass4RewriteAss2P1")
public class Ass4RewriteAss2P1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ass4RewriteAss2P1() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "";
        String quantity = request.getParameter("quantity");
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        double price = 9.95;
        double total;

        if (quantity.equals("") || email.equals("") || name.equals("")) {
            url = "ass4/rewriteAss2/p1/error.jsp";
            System.out.println("Going to error page.");
        } else {
            url = "ass4/rewriteAss2/p1/orderConfirm.jsp";
            total = price * Integer.parseInt(quantity);

            request.setAttribute("quantity", ""+quantity);
            request.setAttribute("name", ""+name);
            request.setAttribute("email", ""+email);
            request.setAttribute("price", ""+price);
            request.setAttribute("total", ""+total);
            System.out.println("Going to confirm page.");
        }

        request.getRequestDispatcher(url).forward(request, response);
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
