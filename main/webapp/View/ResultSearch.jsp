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



      <!-- ============================================-->
      <!-- <section> begin ============================-->
    

        <!-- end of .container-->

     
      <!-- <section> close ============================-->
      <!-- ============================================-->
      
  

       
        <c:if test="${message != null }">
			${message}
		</c:if>
          <div class="row">
            
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
           
           
          </div>
      
        <!-- end of .container-->

      </section>
      
     
    
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