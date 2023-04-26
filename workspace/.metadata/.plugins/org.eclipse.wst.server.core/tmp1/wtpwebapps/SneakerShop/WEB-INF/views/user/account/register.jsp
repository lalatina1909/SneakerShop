<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<head>
<title>Đăng ký tài khoản</title>
</head>
<body>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>
			<h3>Người dùng</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>Đăng ký tài khoản</h5>
						<br />
						<form:form action="dang-ky" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Nhập Địa chỉ Email</label>
								<div class="controls">
									<form:input type="email" class="span3" placeholder="Nhập Email" path="user" />  
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="inputEmail">Nhập Mật khẩu</label>
								<div class="controls">
									<form:input type="password" class="span3" placeholder="Nhập Mật khẩu" path="password" />  
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="inputEmail">Nhập Họ và tên</label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Nhập họ tên" path="display_name" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="inputEmail">Nhập Địa chỉ</label>
								<div class="controls">
									<form:input type="text" class="span3" placeholder="Nhập địa chỉ" path="address" />
								</div>
							</div>
							
							<div class="controls">
								<button type="submit" class="btn block">Tạo tài khoản</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng nhập tài khoản có sẵn</h5>
						<h1>${statusLogin}</h1>
						<form:form action="dang-nhap" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input class="span3" type="email" placeholder="Mời nhập Email" path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật khẩu</label>
								<div class="controls">
									<form:input type="password" class="span3" placeholder="Password" path="password" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Đăng nhập</button>
									<a href="#">Quên mật khẩu?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>