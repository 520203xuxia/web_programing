package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.PrintWriter;
public class TestFilter implements Filter {
	public TestFilter(){
		System.out.println("过滤器构造方法");
	}
	public void init(FilterConfig config) throws ServletException {
		System.out.println("过滤器初始化方法");
	}
	public void destroy() {
		System.out.println("过滤器消亡方法");
	}
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("haha<p>");
		
		String name = request.getParameter("name");
		if("yu".equals(name))
			chain.doFilter(request, response);
		else
			out.println("<font color='red'>您无访问权限.</font>");;
		out.println("lala<p>");
	}
}
