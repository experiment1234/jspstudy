<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</head>
<body>

  <% 
    String remember_me = ""; //쿠키 remeber_me가 없으면 빈 문자열("")을 사용하기 위해서 초기화를 진행함
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
     for(int i = 0; i < cookies.length; i++){
    	 if(cookies[i].getName().equals("remebmer_me")){
        remember_me = cookies[i].getValue();
        break;
       }
     }
    }
    pageContext.setAttribute("remeber_me", remember_me);
    %>
    


  <div>
    <form method="post" action="${contextPath}/rememberMe">
      <div>
        <label for="id">아이디</label>
        <input type="text" name="id" id="id">
      </div>
      <div>
        <label for="pw">비밀번호</label>
        <input type="password" name="pw" id="pw">
      </div>
      <div>
        <button type="submit">로그인</button>
      </div>
      <div>
        <input type="checkbox" id="rememberMe" name="remember_me">
        <label for="remember_me">아이디 기억</label>
      </div>
    </form>
    <script>
  // $(function(){})로 처리하면 <body>태그를 모두 읽은 뒤 function(){}을 실행한다. 
  $(function(){
    if('${remember_me}' !== ''){}
    $('#id').val('${remeber_me}');
    $('#remeber_me').prop('checked', true);
</script>
    
    
  </div>

<c:if test="${sessionScope.id != null}">
  <div>${sessionScope.id}님 환영합니다.</div>
  <div><button type="button" id="btn_logout">로그아웃</button></div>
</c:if>





    })
  })






</body>
</html>