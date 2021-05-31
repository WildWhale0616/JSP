import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloWorld extends HttpServlet {

    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
        throws ServletException, IOException
    {
        PrintWriter out = response.getWriter();

        out.println("<HTML>");
        out.println("<HEAD><TITLE>Hello World JSP!</TITLE></HEAD>");
        out.println("<BODY>");
        out.println("<FONT COLOR = RED >Hello World!</FONT><BR>");
        out.println("</BODY>");
        out.println("</HTML>");       
    }
}
