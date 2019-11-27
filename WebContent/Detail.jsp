<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="models.bean.MatHangBean"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css" integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt" crossorigin="anonymous">
	<title>Detail</title>
</head>
<body>
	<%
		MatHangBean matHang = (MatHangBean) request.getAttribute("matHang");
	%>

	<nav class="navbar navbar-dark bg-dark mb-3">
	  <a href="HomeController" class="navbar-brand">Home</a>
	</nav>
	
	<h4 class="m-3">Chi tiết sản phẩm </h4>
	
	<div class="m-4">
		  <div class="row no-gutters">
		  	<div class="col-md-3">
		      <img style="max-width: 280px;" src="<%=matHang.getAnhMatHang() %>" class="card-img" alt="<%=matHang.getAnhMatHang() %>">
		    </div>
		    <div class="col-md-9">
		      <div class="card-body">
		        <h5 class="card-title"><%=matHang.getTenHang() %></h5>
		        <p class="card-text">Giá bán: <span style="color: blue"> <%=matHang.getGiaFormat() %> </span> </p>
		        <p class="card-text">Nhà cung cấp: <span style="color: blue"> <%=matHang.getTenNhaCungCap() %> </span> </p>
		        <p class="card-text">Số lượng: <span style="color: blue"> <%=matHang.getSoLuong() %> </span> </p>
		      </div>
		    </div>
		  </div>
		</div>
	
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>
</body>
</html>