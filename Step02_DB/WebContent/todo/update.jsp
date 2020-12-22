<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/update.jsp</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
<%
	request.setCharacterEncoding("utf-8");
	int num=Integer.parseInt(request.getParameter("num"));
	String content=request.getParameter("content");
	String regdate=request.getParameter("regdate");
	TodoDto dto=new TodoDto();
	dto.setNum(num);
	dto.setContent(content);
	dto.setRegdate(regdate);
	TodoDao dao=new TodoDao();
	boolean isSuccess=dao.update(dto);
%>
</head>
<body>
	<%if(isSuccess){ %>
		<p>회원 한명의 정보를 수정했습니다. <a href="list.jsp">확인</a></p>
	<%}else{ %>
		<p>회원 정보 수정 실패 <a href="list.jsp">목록으로 돌아가기</a></p>
	<%} %>
</body>
</html>