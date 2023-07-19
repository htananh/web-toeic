<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	     <c:forEach var="list" items="${listComment}">
			                    <img src="https://i.imgur.com/yTFUilP.jpg" alt="" class="rounded-circle" width="40" height="40">
			                    <h7>${list.fullname}</h7>
			                    <p style="padding-left:45px">${list.cmtgrammarcontent}</p>
				 </c:forEach>
</body>
</html>