package service;

import javax.servlet.http.HttpServletRequest;

import common.ActionForward;

public interface ArticleService {
	public ActionForward register(HttpServletRequest request);
}
