package ex07_binding;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Binding3
 */
@WebServlet("/binding4")
public class Binding4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Binding4() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msg1 = (String)request.getServletContext().getAttribute("msg");
		System.out.println(msg1);
		
		//HttpSession 영역의 msg 확인하기
		String msg2 = (String)request.getSession().getAttribute("msg");
		System.out.println(msg2);
		
		//HttpServletRequest 영역의 msg 확인하기
		String msg3 = (String)request.getAttribute("msg");
		System.out.println(msg3);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
