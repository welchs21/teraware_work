<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/style.css" rel="stylesheet" type="text/css">

<meta charset="UTF-8">
<title>board</title>
</head>
<body>
<h2>board list</h2>
	<table>
		<colgroup>
			<col style="width:5%;" />
			<col style="width:auto;" />
			<col style="width:15%;" />
			<col style="width:10%;" />
			<col style="width:10%;" />
		</colgroup>
		<thead>
			<tr>
				<th>근무일자</th>
				<th>사원번호</th>
				<th>성명</th>
				<th>출근시간</th>
				<th>퇴근시간</th>
				<th>수정출근시간</th>
				<th>수정퇴근시간</th>
				<th>출근IP</th>
				<th>퇴근IP</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty boardList }" >
					<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>
				</c:when> 
				<c:when test="${!empty boardList}">
					<c:forEach var="list" items="${boardList}">
						<tr>
							<td><c:out value="${list.attendDt}"/></td>														
							<td><c:out value="${list.loginId}"/></td>
							<td><c:out value="${list.krName}"/></td>
							<td><c:out value="${list.officeIn}"/></td>
							<td><c:out value="${list.officeOut}"/></td>
							<td><c:out value="${list.officeInMod}"/></td>
							<td><c:out value="${list.officeOutMod}"/></td>
							<td><c:out value="${list.officialIpIn}"/></td>
							<td><c:out value="${list.officialIpOut}"/></td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
		</tbody>
	</table>
</body>
</html>
