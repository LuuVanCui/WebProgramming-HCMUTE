package ass3.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ass3RewriteAss1
 */
@WebServlet("/Ass3RewriteAss1")
public class Ass3RewriteAss1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ass3RewriteAss1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String html = "<div class=\"container\">\n" +
                "        <div class=\"box\">\n" +
                "            <form name=\"purchaseform\" method=\"post\" action=\"Ass3RewriteAss1\" >\n" +
                "                <label for=\"quantity\">Quantity: </label>\n" +
                "                <input class=\"txtbox\" type=\"number\" id=\"quantity\" min=\"1\" size=\"8\" name=\"quantity\" />\n" +
                "                <br />\n" +
                "                <input class=\"btn\" type=\"submit\" value=\"Submit\" />\n" +
                "            </form>\n" +
                "        </div>\n" +
                "    </div>";
        out.println(html);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String quantity = request.getParameter("quantity");
        String html = "<h1>Thank you for your order of " + quantity +" widgets!</h1>";
        out.println(html);
	}

}
