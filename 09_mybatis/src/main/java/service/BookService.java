package service;


import javax.servlet.http.HttpServletRequest;

import common.ActionForward;

public interface BookService {
	public ActionForward register(HttpServletRequest request);
	public ActionForward getBoardList(HttpServletRequest request);
	public ActionForward getBoardByNo(HttpServletRequest request);
	public ActionForward edit(HttpServletRequest request);
	public ActionForward modify(HttpServletRequest request);
	public ActionForward delete(HttpServletRequest request);
}
