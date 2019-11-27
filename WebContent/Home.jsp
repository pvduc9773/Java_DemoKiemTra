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
	<title>Home</title>
</head>
<body>

	<%
		ArrayList<MatHangBean> dsMatHang = (ArrayList<MatHangBean>) request.getAttribute("dsMatHang");
	%>

	<nav class="navbar navbar-dark bg-dark mb-3">
	  <a href="HomeController" class="navbar-brand">Home</a>
	  <form action="HomeController" class="form-inline">
	    <input class="form-control mr-sm-2" type="search" name="keysearch" placeholder="Search" aria-label="Search">
	    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	  </form>
	</nav>
	<%
		if (dsMatHang.size() > 0){
	%>
		<h4 class="m-3">Danh sách sản phẩm</h4>
		<%		
			for (MatHangBean matHang: dsMatHang) {
		%>
			<div class="card m-3">
			  <div class="row no-gutters">
			    <div class="col-md-2">
			      <img class="m-1" style="max-width: 200px;" src="<%=matHang.getAnhMatHang() %>" class="card-img" alt="<%=matHang.getAnhMatHang() %>">
			    </div>
			    <div class="col-md-10">
			      <div class="card-body">
			        <h5 class="card-title"><%=matHang.getTenHang() %></h5>
			        <p class="card-text"><%=matHang.getGiaFormat() %></p>
			        <a href="DetailController?id=<%=matHang.getMaHang() %>" class="btn btn-primary">Xem chi tiết</a>
			      </div>
			    </div>
			  </div>
			</div>
	<%
			}
		} else {
	%>
		<h4 class="m-3">Danh sách rỗng</h4>
	<%
		}
	%>
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>
</body>
</html>