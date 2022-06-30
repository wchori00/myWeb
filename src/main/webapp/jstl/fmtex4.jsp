<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fmt 예제 - timeZone</title>
</head>
<body>
<c:set var="now" value="<%=new java.util.Date() %>"/>
Korea KST:
<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
<br><br>
UK GMT:
<fmt:timeZone value="GMT">
<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
</fmt:timeZone>
<br><br>
<% // 사용가능한 timeZone 목록 구하기
	String[] ids = java.util.TimeZone.getAvailableIDs();
	for(int i = 0; i < ids.length; i++) {
		out.println(ids[i] + "<br>");
	}
%>
</body>
</html>