<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- RWD -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8,IE=EmulateIE9"/> 
<title>JSP</title>
<!--bootstrap-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!--jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!--propper jquery -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!--latest javascript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<!--fontawesome icon-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<!--google icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>

<nav class="navbar navbar-expand-md sticky-top">
	<button class="navbar-toggler btn btn-dark" type="button" data-toggle="collapse" data-target="#collapsiblebar">
		<span class="navbar-toggler-icon text-dark" ></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsiblebar">
		<a class="navbar-brand nav-link" href="home" style="color:#FFFFFF;font-family:fascinate;font-weight:bold;font-size:3vw;text-shadow:0 -3px red, 3px 3px blue, -3px 3px green;">
			<img class="rounded-circle" src="image/son.jpg" alt="logo" style="width:35%;"/>
			MIO WORLD
		</a>
		<ul class="navbar-nav nav">
			<li class="nav-item">
				<a class="nav-link" href="home">
					<i class="fas fa-home"></i>Home
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="intro">
					<i class="fas fa-cat"></i>Info
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="navigator">
					<i class="fas fa-dog"></i>Relative
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link disabled" href="#">
					<i class="fas fa-hammer"></i>Construction...
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="table">
					<i class="fas fa-book"></i>Table
				</a>
			</li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdownMenu" data-toggle="dropdown">more</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="userPage">my page</a><!-- ?????? ?????? -->
					<a class="dropdown-item" href="customerServices">????????????</a><!-- toggle?????? ?????? -->
				</div>
			</li>
		</ul>
	</div>
</nav>

<h3 id="fail" class="text-center multiEffect mt-3 mb-3"></h3>
<h3 class="text-center text-danger">????????????</h3>
<form action="join" method="post" id="frm1" name="frm1">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<div class="form-group">
		<label for="uId">?????????</label>
		<input type="text" class="form-control" name="pid" placeholder="E-Mail?????? ??????" id="pid" required/>
	</div>
	<div class="form-group">
		<label for="uPw">????????????</label>
		<input type="password" class="form-control" name="ppw" id="ppw"	placeholder="???????????? ??????" required/>
	</div>
	<div class="form-group">
		<label for="uAddress">??????</label>
		<input type="text" class="form-control" name="paddress" id="address" placeholder="?????? ??????" required/>			
	</div>
	<div class="form-group">
		<label for="uHobby">??????</label>
		<input type="text" class="form-control" name="phobby" id="phobby" placeholder="?????? ??????" required/>
	</div>
	<div class="form-group">
		<label for="uProfile">????????????:</label>
		<textarea class="form-control" name="pmyself" id="pmyself" rows ="10" placeholder="??????????????? ???????????????" required></textarea>
	</div>
	<button type="submit" class="btn btn-success" id="join1">????????????</button>&nbsp;&nbsp;
	<button type="reset" class="btn btn-danger">??? ???</button>&nbsp;&nbsp;		
	<a href="loginView" class="btn btn-primary">?????????</a>
</form>

<script>
$(document).ready(function(){
	$("#frm1").submit(function(event){
		event.preventDefault();
		$.ajax({
			url : $("#frm1").attr("action"),
			type : $("#frm1").attr("method"),
			data : $("#frm1").serialize(),
			success : function(data){
				if(data.search("join-success") > -1) {
					$("#mbody").text("????????? ??????!.");
					$("#modal").trigger("click");					
				}
				else {
					$("#fail").text("????????? ID ????????? ??????!");					
				}
			},
			error : function() {
				$("#fail").text("???????????? ????????????!");				
			}
		});
	});
		
	$("#join1").submit(function(event){
		event.preventDefault();
		$.ajax({
			url : $("#frm1").attr("action"),
			type : $("#frm1").attr("method"),
			data : $("#frm1").serialize(),
			success : function(data){
				if(data.search("join-success") > -1) {
					$("#mbody").text("????????? ??????!.");
					$("#modal").trigger("click");					
				}
				else {
					$("#fail").text("????????? ID ????????? ??????!");					
				}
			},
			error : function() {
				$("#fail").text("???????????? ????????????!");				
			}
		});
	});
});
</script>
</body>
</html>