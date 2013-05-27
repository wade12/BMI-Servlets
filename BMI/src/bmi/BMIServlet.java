package bmi;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;

import javax.servlet.http.*;

@SuppressWarnings("serial")
public class BMIServlet extends HttpServlet
{		
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setContentType("text/plain");	
		response.setContentType("text/html");
	    PrintWriter out = response.getWriter();

		// display welcome message
	    out.println("<p>Welcome to the Body Mass Index (BMI) calculator.</p>");

	    SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    fmt.setTimeZone(new SimpleTimeZone(0, ""));
	    out.println("<p>Date & Time: " + fmt.format(new Date()) + "</p>");
	    
	    // display login message
	    out.println("<p>Please click here to <font color=blue><a href='/form.jsp'><u>enter.</u></a></font></p>");
	        	
	} // end method doGet
				
} // end Class BMIServlet
