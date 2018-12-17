<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<head>
<style>
.well {
	padding: 35px;
	padding-left: 30px;
	box-shadow: 0 0 10px #666666;
	margin: 13% auto 0;
	width: 450px;
}

.text-success {
	color: #166790;
	font-weight: bold;
}

body {
	background: linear-gradient(to bottom, #FFB88C, #17a2b8d9);
}

.input-group-addon {
	background-color: #ffde6c;
	color: #d17d00;
}
</style>

<script src="${pageContext.request.contextPath}/resources/js/signup.js"></script>
</head>
<!------ Include the above in your HEAD tag ---------->

<form action="signup_processing" name="myForm" method="post"
	onsubmit="return(validate());">
	<div class="container-fluid">
		<div class="row">
			<div class="well center-block">
				<div class="well-header">
					<h3 class="text-center text-success">Register Here!</h3>
					<hr>
				</div>

				<!-- 학번 -->
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-tags"></i>
								</div>
								<input type="text" placeholder="class of" name="p_uid"
									class="form-control">

							</div>
						</div>
					</div>
				</div>

				<!-- 부서 코드 -->
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-pencil"></i>
								</div>
								<select name="f_code"class="form-control">
									<option>Please select..</option>
									<c:forEach var="list" items="${department}" varStatus="status">
									<option value="${list.p_code}">${list.name}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
				</div>

				<!-- 사용자 이름 -->
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
								<input type="text" placeholder="name" name="name"
									class="form-control">
							</div>
						</div>
					</div>
				</div>

				<!-- 사용자 닉네임 -->
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
								<input type="text" placeholder="alias" name="alias"
									class="form-control">
							</div>
						</div>
					</div>
				</div>

				<!-- 비밀번호 -->
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-lock"></i>
								</div>
								<input type="password" minlength="8" maxlength="20"
									placeholder="Password" name="password" class="form-control">
							</div>
						</div>
					</div>
				</div>

				<div class="row widget">
					<div class="col-md-12 col-xs-12 col-sm-12">
						<button class="btn btn-warning btn-block">Submit</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

</form>
