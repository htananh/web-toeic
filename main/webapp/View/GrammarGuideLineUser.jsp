<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GrammarGuideLine</title>
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
 <main class="main" id="top">


      <!-- ============================================-->
      <!-- <section> begin ============================-->
    

        <!-- end of .container-->

      	<jsp:include page="Header.jsp"></jsp:include>
      <!-- <section> close ============================-->
      <!-- ============================================-->
      
      <section>

        <div class="container">
          <div class="row">
            <h1 class="text-center mb-5">Phần Hướng Dẫn Học Ngữ Pháp</h1>
            <c:forEach var="list" items="${ListGrammarGuideLine}">
            	 <div class="col-md-4 mb-4">
              <div class="card h-100"><img class="card-img-top w-100" src="imageUpload/${list.grammarimage}" alt="courses" />
                <div class="card-body">
                  <h5 class="font-sans-serif fw-bold fs-md-0 fs-lg-1">${list.grammarname}</h5>
                  <a class="text-muted fs--1 stretched-link text-decoration-none" href="GrammarGuideLineContentUser?grammarguidelineid=${list.grammarguidelineid}">${list.grammarguidelineid}</a>
                </div>
              </div>
            </div>
            
            </c:forEach>
           <nav aria-label="Page navigation example">
	
	<c:choose>
  <c:when test="${pageNumber==1}">
    <ul class="pagination">
    <li  class="disabled page-item"><a class="page-link" href="">Previous</a></li>
    <li  class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=1">1</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=2">2</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=${pageNumber+1}">Next</a></li>
  </ul>
  </c:when>
  <c:when test="${pageNumber==MaxDisplay}">
    <ul class="pagination">
    <li class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=${pageNumber-1}">Previous</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=1">1</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=2">2</a></li>
    <li class="disabled page-item"><a class="page-link" href="">Next</a></li>
  </ul>
  </c:when>
  <c:otherwise>
    <ul class="pagination">
    <li class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=${pageNumber-1}">Previous</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=1">1</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=2">2</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="GrammarGuideLineUser?page=${pageNumber+1}">Next</a></li>
  </ul>
  </c:otherwise>
</c:choose>
	
	
	

</nav>
           
          </div>
        </div>
        <!-- end of .container-->

      </section>
      
      
      <section class="py-0" style="margin-top: -5.8rem;">
        <div class="container bg-primary">
          <div class="row justify-content-md-between justify-content-evenly py-4">
            <div class="col-12 col-sm-8 col-md-6 col-lg-auto text-center text-md-start">
              <p class="fs--1 my-2 fw-bold">Thang 7 - 2023</p>
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
     <script src="template/vendors/@popperjs/popper.min.js"></script>
    <script src="template/vendors/bootstrap/bootstrap.min.js"></script>
    <script src="template/vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="template/vendors/fontawesome/all.min.js"></script>
    <script src="template/assets/js/theme.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>