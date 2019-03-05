import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import database.CreateThread;
import info.ThreadListProfile;
import database.listQuery;



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
		
		if(threadname==null||threadname.length()==0){
			throw new ServletException("スレッドタイトルに入力内容がありません",null);
		}
		if(description==null||description.length()==0){
			throw new ServletException("スレッド見出しに入力内容がありません",null);
		}
		if(username==null||username.length()==0){
			throw new ServletException("名前に入力内容がありません",null);
		}
		if(title==null||title.length()==0){
			throw new ServletException("タイトルに入力内容がありません",null);
		}
		if(title==null||title.length()==0){
			throw new ServletException("タイトルに入力内容がありません",null);
		}
		
		String id = CreateThread.DoCreateThread(threadname,theme,description,username,title,text);
		
		
		List<ThreadListProfile> tlist = listQuery.getQueryList(theme);
		
		req.setAttribute("themeA",theme);
		req.setAttribute("users",tlist);
		
		RequestDispatcher dis= req.getRequestDispatcher("/threadlistoutput");
		
		dis.forward(req,res);
	
	}



}