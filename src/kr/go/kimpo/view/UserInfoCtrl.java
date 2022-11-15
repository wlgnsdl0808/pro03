package kr.go.kimpo.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.go.kimpo.dto.UserDTO;
import kr.go.kimpo.model.UserDAO;

@WebServlet("/UserInfoCtrl.do")
public class UserInfoCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("sid");
		
		UserDAO dao = new UserDAO();
		UserDTO dto = dao.userInfo(id);
		
		//dao로 부터 받은 데이터를 view에 디스패치함
		request.setAttribute("dto", dto);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/user/userUpdate.jsp");
		view.forward(request, response);
		
	}
}