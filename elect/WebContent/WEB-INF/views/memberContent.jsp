<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
	function listFn() {
		location.href="${cpath}/list.do";
	}
	
	function deleteFn(num) {
		location.href="${cpath}/delete.do?num="+num;
	}
</script>

</head>
<body>
	- 상세보기 -
	<form action='${cpath}/update.do' method='post'>
		<table border="1">
			<input type='hidden' name='num' value="${vo.num}" />
			<tr>
				<td>번호</td>
				<td>${vo.num}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${vo.name}</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>${vo.id}</td>
			</tr>
			
			<tr>
				<td>이메일</td>
				<td><input type='text' name='email' value='${vo.email}'/></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type='text' name='phone' value='${vo.phone}' /></td>
			</tr>
			<tr>
				<td align='center' colspan='2'>
				<input type='submit' value='수정' />
				<input type="button" value='삭제' onclick="deleteFn(${vo.num})"/>
				<input type='reset' value='취소' /> 
				<input input type='button' value='리스트' onclick="listFn()"/>
			</tr>
		</table>
	</form>
</body>
</html>