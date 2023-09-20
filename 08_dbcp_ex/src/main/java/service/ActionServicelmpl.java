package service;

import javax.servlet.http.HttpServletRequest;

import common.ActionForward;
import domain.ArticleDto;

public class ActionServicelmpl implements ArticleService {


	@Override
	public ActionForward register(HttpServletRequest request) {
		
		//등록할 제목과 내용 
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		//제목+내용 -> ArticleDto 객체
		ArticleDto dto = ArticleDto.builder()
							.title(title)
							.content(content)
							.build();
		//ArticleDao의 register 메소드 호출
		int registerResult = dao.register(dto);
		
		//등록 성공(register 
	}

}
