import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import info.resProfile;
import database.InsertTest;
import database.QueryTest;

public class TamaireThread extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		//パラメータを受け取る
		//文字コード固定
		req.setCharacterEncoding("Windows-31J");
		
		
		//String threadid = req.getParameter("threadid");
		String username = req.getParameter("username");
		String title = req.getParameter("title");
		String text = req.getParameter("text");
			//データベースに書き込む
		InsertTest.insertUser_Table("0",username, title, text);
	
	//データベースからリストをもらう
		List<resProfile> pLIst = QueryTest.getQueryList("0");
		
		
	//パラメータをJSPに投稿する
		
		req.setAttribute("users",pLIst);
		
	//転送先のJSPを指定
		RequestDispatcher dis= req.getRequestDispatcher("/list");
	
		//JSPに転送
		dis.forward(req,res);
	
	}
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
		
		res.setContentType("text/html; charset=UTF-8");
		//パラメータを受け取る
		//文字コード固定
		req.setCharacterEncoding("Windows-31J");
		
		String rno = req.getParameter("rno");
		
	//データベースからリストをもらう
		List<resProfile> pLIst = QueryTest.getQueryList(rno);
		
		
	//パラメータをJSPに投稿する
		
		req.setAttribute("users",pLIst);
		
	//転送先のJSPを指定
		RequestDispatcher dis= req.getRequestDispatcher("/list");
	
		//JSPに転送
		dis.forward(req,res);
	}
}