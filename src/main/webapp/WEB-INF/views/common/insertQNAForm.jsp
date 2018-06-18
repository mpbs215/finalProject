<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

QNA Insert
<script>
	function checkNumber() {
		if (isNaN($("#QNAPwd").val())) {
			alert("비밀번호는 숫자만 입력해주세요.")
			return false;
		} else {
			return true;
		}
	}
</script>



<form onsubmit="return checkNumber()"
	action="${pageContext.request.contextPath}/common/insertQNA?${_csrf.parameterName}=${_csrf.token}"
	method="post" enctype="multipart/form-data">
	<table class="boardTable">
		<tr>
			<th>작성자</th>
			<th>질문제목</th>
			<th>질문내용</th>
			<th>패스워드</th>
			<th>이미지</th>

		</tr>
		<tr>
			<th><input type="text" name="userId" hidden="hidden"
				value="${userDTO.userId}">${userDTO.userId}</th>
			<th><input type="text" name="QNASub" required="required" /></th>
			<th><input type="text" name="QNAContent" required="required" /></th>
			<th><input type="password" name="QNAPwd" id="QNAPwd"
				required="required"></th>
			<th><input type="file" name="QNAImageFile" /></th>
		</tr>

	</table>
	<button id="insertQNButton">글쓰기</button>
</form>