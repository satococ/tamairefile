import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import info.ThreadListProfile;
import database.listQuery;

public class ThreadList extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		req.setCharacterEncoding("Windows-31J");
	
		List<ThreadListProfile> tlist = listQuery.getQueryList("����");
		
		req.setAttribute("users",tlist);
		
		RequestDispatcher dis= req.getRequestDispatcher("/threadlistoutput");
	
		dis.forward(req,res);
	}
	
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		req.setCharacterEncoding("Windows-31J");
	
		List<ThreadListProfile> tlist = listQuery.getQueryList("����");
		
		req.setAttribute("users",tlist);
		
		RequestDispatcher dis= req.getRequestDispatcher("/threadlistoutput");
	
		dis.forward(req,res);
	}
}
