import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import database.CreateThread;


public class CreateThreadServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		
		res.setContentType("text/html; charset=UTF-8");
		
		req.setCharacterEncoding("UTF-8");
		
		
		String threadname = req.getParameter("threadname");
		String theme = req.getParameter("theme");
		String description = req.getParameter("description");
		
		String username = req.getParameter("username");
		String title = req.getParameter("title");
		String text = req.getParameter("text");
		
		String id = CreateThread.DoCreateThread(threadname,theme,description,username,title,text);
		
		
		RequestDispatcher dis= req.getRequestDispatcher("/home");
		
		dis.forward(req,res);
	
	}



}