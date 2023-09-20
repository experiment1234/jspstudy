<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
$(function(){
	//함수 호출
	fnArticleList();
	fnAritcleRegister();
})

  //함수 정의
  function fnArticleList(){
	 $('#btn_list').click(function)(){
		 location.href = '${contextPath}/article/list.do';
	 })
}
  function fnBoardRegister(){
	  $('#frm_register').submit(function(event){
		  if($('#title').val() === ''){
			  alert('제목은 필수입니다.');
			  $('#title').focus();
			  event.preventDefault();
			  return;
		  }
	  })
  }
</script>


</head>
<body>

</body>
</html>