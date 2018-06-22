<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<div class="container">

	<h2 class="font-weight-bold">회원정보수정</h2>
	<br />
	<form action="${pageContext.request.contextPath}/user/userModifyUser">
		<div class="form-group col-md-9">
			<label for="userId">아이디</label> 
			<input type="text"class="form-control" name="userId" readonly="readonly" value="${dto.userId}">
		</div>
		<div class="form-group col-md-9">
			<label for="pwd">비밀번호</label> 
			<input type="password" class="form-control" id="pwd" name="password">
		</div>

		<div class="form-group col-md-9">
			<label for="userName">이름</label> 
			<input type="text" class="form-control" name="userName" value="${dto.userName}">
		</div>
		<div class="form-group col-md-9">
			<label for="email">Email</label> 
			<input type="email" class="form-control" name="email" value="${dto.email}">
		</div>
		<div class="form-group col-md-9">
			<label for="hp">전화번호</label> 
			<input type="text" class="form-control" name="hp" value="${dto.hp}">
		</div>
		<div class="form-group col-md-9">
			<label for="address">주소</label> 
			<input type="text" class="form-control" name="address" value="${dto.address}">
		</div>
		<br />
		<div class="form-group col-md-9">
		<input type="submit" value="수정하기" class="btn btn-outline-primary btn-block"/>
		</div>
	</form>
</div>