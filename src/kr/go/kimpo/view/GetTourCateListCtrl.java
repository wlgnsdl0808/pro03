package kr.go.kimpo.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.kimpo.dto.PicDTO;
import kr.go.kimpo.dto.TourDTO;
import kr.go.kimpo.model.TourDAO;

@WebServlet("/GetTourCateListCtrl.do")
public class GetTourCateListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//UTF-8 초기화
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cate = request.getParameter("cate");
		//dao에서 목록 불러오기 호출하여 반환받음
		TourDAO dao = new TourDAO();
		ArrayList<TourDTO> tourList = dao.getTourCateList(cate);
		
		//dao로 부터 받은 데이터를 view에 디스패치함
		request.setAttribute("list", tourList);
		request.setAttribute("placeCate", cate);
		
		RequestDispatcher view = request.getRequestDispatcher("./tour/tourCateList.jsp");
		view.forward(request, response);
	}
}