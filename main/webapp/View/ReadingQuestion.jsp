<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title><link rel="apple-touch-icon" sizes="180x180" href="template/assets/img/favicons/apple-touch-icon.png">
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
    <link rel="stylesheet" type="text/css" href="phantranglib/css/style.css" media="screen"/>
     <link rel="stylesheet" type="text/css" href="countdown/css/flipdown/flipdown.css">
    <link rel="stylesheet" type="text/css" href="countdown/css/style.css">
     
    <script type="text/javascript" src="countdown/js/flipdown/flipdown.js"></script>
    <script type="text/javascript" src="countdown/js/main.js"></script>
    <script type="text/javascript">
	function search(){
		var xhr = new XMLHttpRequest();
		var name=document.myForm.name.value;
		
		var url="SeachController?name="+name;
		if(name.length >=1)
			{
			xhr.onreadystatechange = function() {
				  if (xhr.readyState === XMLHttpRequest.DONE) {
				    if (xhr.status === 200) {
				    	var responseData = xhr.responseText;
				  		document.getElementById("ketqua").innerHTML=responseData;
				  		
				    } else {
				      var responseData="fault connection";
				    }
				  }
				};
				xhr.open('POST', url, true); // true: yêu cầu không đồng bộ
				xhr.send();
			}else{
				document.getElementById("ketqua").innerHTML="";
			}
		


	}
</script>

</head>
<body >
	  <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">


      <!-- ============================================-->
      <!-- <section> begin ============================-->
    

        <!-- end of .container-->

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
                <form style="padding-left: 1030px;" st action="LogoutController" method="post">
		
						<input type="submit"  value="LogOut">
							</form>
            
           	
          </div>
          <form class="d-flex my-3 d-block d-lg-none">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
              <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
            <div class="dropdown d-none d-lg-block">
              <button class="btn btn-outline-light ms-2" id="dropdownMenuButton1" type="submit" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-search text-800"></i></button>
              <ul class="dropdown-menu dropdown-menu-lg-end" aria-labelledby="dropdownMenuButton1" style="top:55px">
                <form name="myForm">
                  <input class="form-control" type="text" name="name" onkeyup="search()" placeholder="Search" aria-label="Search" />
                </form>
                
        </div>
      </nav>
      <%} %>
      	
      <!-- <section> close ============================-->
      <!-- ============================================-->

		
     
      
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section>

         <div class="container">
          <div class="row">
            <div class="col">
            
              
            </div>
            <div class="col">
              <div class="d-flex justify-content-end">
                <label class="form-check-label me-2" for="customSwitch1">Monthly</label>
                <div class="form-check form-switch">
                  <input class="form-check-input" id="customSwitch1" type="checkbox" checked="checked" />
                  <label class="form-check-label align-top" for="customSwitch1">Yearly</label>
                </div>
              </div>
            </div>
          </div>
          <div id="paginationdemo" class="row">
         
          
          
        
           
        	  <div class="col-md-6">
        	  
              <div class="card mb-5 mb-md-0 h-100">
                <div class="text-center mb-5"><span class="badge bg-black fw-normal text-uppercase bg-info">Câu Hỏi</span></div>
                <div class="card-body px-4   ">
        	  <div id="p1" class="pagedemo _current" style="">
                  <div class="d-flex justify-content-start"><span class=" fw-medium">nhấn next để làm bài</span></div>
                  	 <ul class="list-unstyled">
			           	
			          		<li class="mb-3"><i class=" text-info me-2"></i></li>
		                    <li class="mb-3"><i class=" text-info me-2"></i></li>
		                    <li class="mb-3"><i class="text-info me-2"></i></li>
		                    <li class="mb-3"><i class=" text-info me-2"></i></li>
		                    <li class="mb-3"><i class=" text-info me-2"></i></li>
                    
                	  </ul>
                  	
                  		
			       
                </div>
                
                 <c:forEach var="list" items="${Listreadingquestion}">
            	 
               	${list.paragraph}
               	</c:forEach>
               	 <c:forEach var="list" items="${Listreadingquestion}">
           		<div id="p${list.num}"  style="display:none;">
           			
            	 
                  <div class="d-flex justify-content-start"><span class=" fw-medium"></span></div>
                  		
                  		<h4>${list.num}</h4>
                  		
			         
			         
			           <ul class="list-unstyled">
			           	
			          		<li class="mb-3"><i class=" text-info me-2"></i>${list.question}}</li>
		                    <li class="mb-3"><i class=" text-info me-2"></i>${list.option1}</li>
		                    <li class="mb-3"><i class="text-info me-2"></i>${list.option2}</li>
		                    <li class="mb-3"><i class=" text-info me-2"></i>${list.option3}</li>
		                    <li class="mb-3"><i class=" text-info me-2"></i>${list.option4}</li>
                    
                	  </ul>
             
            	
            	  
               
           </div>
                   </c:forEach>
              </div>
            </div>
           
          
            
          
          </div>
            
            	
            	   
            <div style="border:1px solid rgba(0, 0, 0, 0.125)" class="col-md-5">
            <div class="text-center mb-5"><span class="badge bg-black fw-normal text-uppercase bg-info">Trả Lời</span></div>
                <form  name="formSubmit" action="SubmitReadexecise?readexeciseid=<%=request.getAttribute("readexeciseid") %>" method="POST">
             
             <c:forEach items="${Listreadingquestion}" var="list">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			${list.num}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" name="ans[${list.num}]" value="A" >
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" name="ans[${list.num}]" value="B" >
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" name="ans[${list.num}]" value="C" >
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" name="ans[${list.num}]" value="D" >
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<br>
	
	</c:forEach>
             
              <br>
		<input  style="position: relative; right: -360px; top: 100px;" type="submit" name="nộp bài" class="btn btn-secondary">
            </form>
            </div>
          </div>
         
          <div  id="demo5">                   
                </div>
        </div>
        <!-- end of .container-->
	  
      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
     
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
   
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
     
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
      
      <!-- <section> close ============================-->
      <!-- ============================================-->


      <section class="py-0" style="margin-top: -5.8rem;">
        <div class="container bg-primary">
          <div class="row justify-content-md-between justify-content-evenly py-4">
            <div class="col-12 col-sm-8 col-md-6 col-lg-auto text-center text-md-start">
              <p class="fs--1 my-2 fw-bold">All rights Reserved &copy; Your Company, 2021</p>
            </div>
            <div class="col-12 col-sm-8 col-md-6">
              <p class="fs--1 my-2 text-center text-md-end"> Made with&nbsp;
                <svg class="bi bi-suit-heart-fill" xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="#EB6453" viewBox="0 0 16 16">
                  <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"></path>
                </svg>&nbsp;by&nbsp;<a class="fw-bold text-900" href="https://themewagon.com/" target="_blank">Ho Tan Anh </a>
              </p>
            </div>
          </div>
        </div>
      </section>
    </main>
    <!-- ===============================================-->
    <!--    End of Main Content-->
    <!-- ===============================================-->




    <!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
    <script src="template/vendors/@popperjs/popper.min.js"></script>
    <script src="template/vendors/bootstrap/bootstrap.min.js"></script>
    <script src="template/vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="template/vendors/fontawesome/all.min.js"></script>
    <script src="template/assets/js/theme.js"></script>
    <script type="text/javascript" src="phantranglib/jquery-1.3.2.js"></script>
		<script src="phantranglib/jquery.paginate.js" type="text/javascript"></script>
		<script type="text/javascript">
		$(function() {
			
			$("#demo5").paginate({
				count 		: 200,
				start 		: 1,
				display     : 7,
				border					: true,
				border_color			: '#fff',
				text_color  			: '#fff',
				background_color    	: 'black',	
				border_hover_color		: '#ccc',
				text_hover_color  		: '#000',
				background_hover_color	: '#fff', 
				images					: false,
				mouse					: 'press',
				onChange     			: function(page){
											$('._current','#paginationdemo').removeClass('_current').hide();
											$('#p'+page).addClass('_current').show();
										  }
			});
		});
		</script>


</body>
</html>