package servlets;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InitServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		ServletContext application = this.getServletContext();
		
		String encoding = application.getInitParameter("encoding");
		out.println("encoding参数是：" + encoding + "<br>");
		
		String dbhost = application.getInitParameter("dbhost");
		out.println("数据库主机：" + dbhost + "<br>");

		String driverClassName = this.getInitParameter("driverClassName");
		out.println("driverClassName参数是：" + driverClassName);
        
        
	}
}
