package ass3.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ass3RewriteAss2
 */
@WebServlet("/Ass3RewriteAss2P1")
public class Ass3RewriteAss2P1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ass3RewriteAss2P1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String html = "<h1>Widget Order Form</h1>\n" +
                "    <form action=\"Ass3RewriteAss2P1\" method=\"post\">\n" +
                "        <div class=\"form-group\">\n" +
                "            <label for=\"numberToPurchase\">Number to purchase:</label>\n" +
                "            <input name=\"quantity\" type=\"number\" class=\"form-control\" id=\"numberToPurchase\" placeholder=\"Number to purchase\">\n" +
                "        </div>\n" +
                "        <div class=\"form-group\">\n" +
                "            <label for=\"yourName\">Your Name:</label>\n" +
                "            <input name=\"name\" type=\"text\" class=\"form-control\" id=\"yourName\" placeholder=\"Your Name\">\n" +
                "        </div>\n" +
                "        <div class=\"form-group\">\n" +
                "            <label for=\"yourEmail\">Your Email:</label>\n" +
                "            <input name=\"email\" type=\"email\" class=\"form-control\" id=\"yourEmail\" placeholder=\"Your Email\">\n" +
                "        </div>\n" +
                "        <button type=\"submit\" class=\"btn-submit\">Submit</button>\n" +
                "    </form>";
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.println(html);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
        String quantity = request.getParameter("quantity");
        String email = request.getParameter("email");

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (name.equals("") || email.equals("") || quantity.equals("")) {
            String htmlError = "<h1>Error in input!</h1>\n" +
                    "    <p>You must provide a name, email and a legal quantity of widgets. Please follow <a href=\"Ass3RewriteAss2P1\">this link</a> and try again.</p>";
            out.println(htmlError);
        } else {
            double price = 33.2;
            double total = price * Integer.parseInt(quantity);
            String htmlConfirm = "<h1>Order Confirmation</h1>\n" +
                    "    <p>Thank you for your order of " + quantity + " widgets, "+ name +".</p>\n" +
                    "    <p>At " + price + ", your build will be " + total + "</p>\n" +
                    "    <p>You will shortly recieve an email information at " + email + "</p>";
            out.println(htmlConfirm);
        }
	}

}
