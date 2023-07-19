<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="icon" type="image/png" sizes="32x32" href="template/assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="template/assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="template/assets/img/favicons/favicon.ico">
    <link rel="manifest" href="template/assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="template/assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="template/assets/css/theme.css" rel="stylesheet" />
</head>
<body>
	<% if(session.getAttribute("SSfullname") == null)
	{
		%>
	 <nav class="navbar navbar-expand-lg navbar-light sticky-top py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand" href="index.html"><img src="template/assets/img/gallery/logo-n.png" height="45" alt="logo" /></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"> </span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto pt-2 pt-lg-0 font-base">
              <li class="nav-item px-2"><a class="nav-link active" aria-current="page" href="index.html">Home</a></li>
              <li class="nav-item px-2"><a class="nav-link" aria-current="page" href="pricing.html">Pricing</a></li>
              <li class="nav-item px-2"><a class="nav-link" aria-current="page" href="web-development.html">Web Development</a></li>
              <li class="nav-item px-2"><a class="nav-link" aria-current="page" href="user-research.html">User Research</a></li>
            </ul>
            
            
            
            <a class="btn btn-primary order-1 order-lg-0" href="LoginForward">Sign Up</a>
            <form class="d-flex my-3 d-block d-lg-none">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
              <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
            <div class="dropdown d-none d-lg-block">
              <button class="btn btn-outline-light ms-2" id="dropdownMenuButton1" type="submit" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-search text-800"></i></button>
              <ul class="dropdown-menu dropdown-menu-lg-end" aria-labelledby="dropdownMenuButton1" style="top:55px">
                <form>
                  <input class="form-control" type="search" placeholder="Search" aria-label="Search" />
                </form>
              </ul>
            </div>
                </div>
        </div>
      </nav>
           	<% } else{ %>
           	 <nav class="navbar navbar-expand-lg navbar-light sticky-top py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand" href="index.html"><img src="template/assets/img/gallery/logo-n.png" height="45" alt="logo" /></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"> </span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto pt-2 pt-lg-0 font-base">
              <li class="nav-item px-2"><a class="nav-link active" aria-current="page" href="index.html">Home</a></li>
              <li class="nav-item px-2"><a class="nav-link" aria-current="page" href="pricing.html">Pricing</a></li>
              <li class="nav-item px-2"><a class="nav-link" aria-current="page" href="web-development.html">Web Development</a></li>
              <li class="nav-item px-2"><a class="nav-link" aria-current="page" href="user-research.html">User Research</a></li>
            </ul>
            
            
            
            <a class="btn btn-primary order-1 order-lg-0" >Wellcome: <%= session.getAttribute("SSfullname") %></a>
            <form class="d-flex my-3 d-block d-lg-none">
              <input class="form-control me-2" type="Submit" placeholder="LogOut" aria-label="LogOut" />
             <form class="d-flex my-3 d-block d-lg-none">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
              <button class="btn btn-outline-primary" type="submit">Search</button>
           
              </ul>
            </form>
           
              <button class="btn btn-outline-light ms-2" id="dropdownMenuButton1" type="submit" style="color: black" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-sign-out-alt"></i></button>
              <ul class="dropdown-menu  aria-labelledby="dropdownMenuButton1" style="top:55px">
                <form style="left:1155px" st action="LogoutController" method="post">
		
						<input type="submit" value="LogOut">
							</form>
            
           	
          </div>
        </div>
      </nav>
      <%} %>
</body>
</html>
