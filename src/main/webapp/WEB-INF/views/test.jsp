<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>hello again</h1>
<ul>
	<c:forEach items="${quyen}" var="quyenItems">     
	   <c:out value="${quyenItems.ma_quyen}"/>
	   <c:out value="${quyenItems.ten_quyen}"/>
	</c:forEach>
</ul>


</body>
</html>