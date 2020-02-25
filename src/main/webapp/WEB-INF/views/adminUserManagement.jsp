<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main/admin.css">
<meta charset="UTF-8">
<title>유저 관리</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>회원 등급</th>
				<th>관리</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${ userList }" varStatus="idx">
				<tr>
					<td>${ idx.count }</td>
					<td>${ user.userId }</td>
					<td>${ user.userName }</td>
					<td>
						<c:choose>
							<c:when test="${ user.userRole eq 'ROLE_USER' }">유저</c:when>
							<c:when test="${ user.userRole eq 'ROLE_TRAINER' }">트레이너</c:when>
							<c:when test="${ user.userRole eq 'ROLE_ADMIN' }">관리자</c:when>
						</c:choose>
					</td>
					<td> <a href="${ pageContext.request.contextPath }/admin/user/${ user.userId }">관리</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>