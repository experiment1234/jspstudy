<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <c:set var="now" value="<%=new Date()%>"/>
  
  <div><fmt:formatDate value="${now}" pattern="yyyy-MM-dd E요일"/></div>
  <div><fmt:formatDate value="${now}" pattern="a h:mm:ss"/></div>
  <div><fmt:formatDate value="${now}" pattern="a H:mm:ss"/></div>

</body>
</html>