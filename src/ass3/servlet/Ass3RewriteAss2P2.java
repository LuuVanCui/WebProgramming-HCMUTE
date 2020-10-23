package ass3.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ass3RewriteAss2P2
 */
@WebServlet("/Ass3RewriteAss2P2")
public class Ass3RewriteAss2P2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ass3RewriteAss2P2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String html = "<form action=\"Ass3RewriteAss2P2\" method=\"post\">" 
      + " <table style=\"border: 1px solid black\"> "
       + "    <tr> "
        + "       <th>Process</th> "
        +  "      <th>Accessories</th>"
         + "  </tr>"
          + " <tr>"
          +  "    <td>"
          +   "       <input type=\"radio\" name=\"processor\" id=\"celeron\" value=\"Celeron D\">"
           +   "      <label for=\"celeron\">Celeron D</label>"
            +  "  </td>"
             +  " <td>"
              +  "    <input type=\"checkbox\" name=\"moniter\" id=\"moniter\" value=\"moniter\">"
               +  "   <label for=\"moniter\">Moniter</label>"
            +  "  </td>"
         + "  </tr>"
          + " <tr>"
           + "    <td>"
           +  "       <input type=\"radio\" name=\"processor\" id=\"pentium\" value=\"Pentium IV\">"
           +   "      <label for=\"pentium\">Pentium IV</label>"
            +  "  </td>"
            +   " <td rowspan=\"2\">"
             +   "    <select name=\"peripherals\" id=\"peripherals\" size=\"3\" multiple>"
              +   "       <option value=\"Camera\" >Camera</option>"
               +   "      <option value=\"printer\" >Printer</option>"
                +   "     <option value=\"scanner\">Scanner</option>"
                 +  " </select>"
            +  " </td>"
         +  " </tr>"
        +  " <tr>"
         +  "     <td>"
          +  "        <input type=\"radio\" name=\"processor\" id=\"pentiumd\" value=\"Pentium D\">"
           +  "      <label for=\"pentiumd\">Pentium D</label>"
            +  " </td>"
         + "  </tr>"
          + " <tr>"
           + "    <td colspan=\"2\" align=\"center\">"
            + "       <button type=\"submit\">PURCHASE</button>"
           +   "  </td>"
         + "  </tr>"
   + "    </table>"
  + " </form>";
		
		response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();

	    out.println(html);

	}

		/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
	    
	    String htmlResult = "<h1>Order summary:</h1>" 
				 +   "<table style=\"border: 1px solid black\">"
				       +" <tr>"
				         +"   <td>Processor: </td>"
				          +"  <td>" + processor + "</td>"
			+"	        </tr>"
				+"        <tr>"
				  +"          <td>"
				    +"            Accessories:"
				     +"       </td>"
				      +"      <td>" + access
				        +"    </td>"
				  +"      </tr>"
				   +" </table>"
			+"	</body>"
			+"	</html>";
	    response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println(htmlResult);
	}

}
