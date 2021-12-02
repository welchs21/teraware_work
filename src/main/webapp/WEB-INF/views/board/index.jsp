<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/style.css" rel="stylesheet" type="text/css">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>board</title>
</head>
<body>
<h2>board list</h2>
<div>
	<button id="go" type="button"class="btn btn-default">출근</button>
	<button id="out" type="button" class="btn btn-default">퇴근</button>
</div>
	<table class="table table-bordered">
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
					<c:when test="${ empty boardList }" >
						<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>
					</c:when> 
					<c:when test="${!empty boardList}">
						<c:forEach var="list" items="${boardList}">
							<tr>
								<td><c:out value="${list.attendDt}"/></td>														
								<td><c:out value="${list.loginId}"/></td>
								<td><c:out value="${list.krName}"/></td>
								<td><div id = officeIn></div> </td>
								<td><div id = officeOut></div> </td>
								<td><div id = officeInMod></div> </td>
								<td><div id = officeOutMod></div> </td>
								<td><div id = officeIpIn></div> </td>
								<td><div id = officeIpOut></div> </td>
							</tr>
						</c:forEach>
					</c:when>
			</c:choose>
		</tbody>
	</table>
<script type="text/javascript">
let today = new Date();
let hours = today.getHours(); // 시
let minutes = today.getMinutes(); // 분
var address = '<%=request.getRemoteAddr()%>';
document.getElementById("go").onclick = function() {
	alert('출근 클릭!');
	document.getElementById("officeIn").innerText = hours + ':' + minutes;
	document.getElementById("officeIpIn").innerText = address;
}

document.getElementById("out").onclick = function() {
	alert('퇴근 클릭!');
	document.getElementById("officeOut").innerText = hours + ':' + minutes;
	document.getElementById("officeIpOut").innerText = address;
}

</script>
</body>
</html>
