<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vocabulary Content</title>
<!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="assets/css/theme.css" rel="stylesheet" />
    <script type="text/javascript">
	function comment(){
		var xhr = new XMLHttpRequest();
		var cmtvocabularycontent=document.FormComment.cmtvocabularycontent.value;
		var memberid = '<%=session.getAttribute("SSmemberid")%>';
		var vocabularyguidelineid='<%=request.getAttribute("vocabularyguidelineid")%>';
		var url="CommentVocabularyController?cmtvocabularycontent="+cmtvocabularycontent+"&memberid="+memberid+"&vocabularyguidelineid="+vocabularyguidelineid;
		xhr.onreadystatechange = function() {
			  if (xhr.readyState === XMLHttpRequest.DONE) {
			    if (xhr.status === 200) {
			    	var responseData = xhr.responseText;
			  		document.getElementById("displayComment").innerHTML=responseData;
			  		
			    } else {
			      var responseData="fault connection";
			    }
			  }
			};
			xhr.open('POST', url, true); // true: yêu cầu không đồng bộ
			xhr.send();


	}
</script>

</head>
<body>
	<main class="main" id="top">


      <!-- ============================================-->
      <!-- <section> begin ============================-->
    

        <!-- end of .container-->

      	<jsp:include page="Header.jsp"></jsp:include>
      <!-- <section> close ============================-->
      <!-- ============================================-->
	
     
      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="pb-11 pt-7 bg-600">

        
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section style="margin-top:-21.5rem">

        <div class="container">
          
         
          <c:forEach var="list" items="${ListContent}">
              
              <img style="height:350px; width:380px;"src="FileVocabulary/${list.vocabularycontentimage}" alt="..." />
             
				  <span style="font-weight: bold; color: blue;">Từ Vựng: </span>
				  <span style="font-weight: bold;">${list.vocabularyguidecontentname}</span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span style="font-weight: bold; color: blue;">Phiên âm:</span> ${list.transcrible}
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span style="font-weight: bold; color: blue;"> Nghĩa: </span>${list.mean}
				<audio controls>
						  <source src="FileVocabulary/${list.audiogg}" type="audio/mpeg">
						  <source src="FileVocabulary/${list.audiomp3}" type="audio/ogg">
						 
						</audio>
						
				<br>
				<br>
				<br>	
              </c:forEach>
            
              
           
           
          
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
      <section>

        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 col-lg-4 mb-5"><img src="template/assets/img/gallery/cta.png" width="280" alt="cta" /></div>
            <div class="col-md-6 col-lg-5">
              <h3 class="text-primary font-sans-serif fw-bold">Bình Luận</h3>
              
              
              <form name="FormComment" class="row g-0 align-items-center">
                <div class="col">
                  <div class="input-group-icon">
                    <input class="form-control form-little-squirrel-control" type="text" name="cmtvocabularycontent" placeholder="Text "  /><i class="fas fa-comment input-box-icon"></i>
                  </div>
                </div>
                <div class="col-auto">
                  <input class="btn btn-primary rounded-0" type="button" onclick="comment()" value="Post"></input>
                </div>
              </form>
              <div id="displayComment">
              	 <!-- end of .container-->
			        <c:forEach var="list" items="${listComment}">
			                    <img src="https://i.imgur.com/yTFUilP.jpg" alt="" class="rounded-circle" width="40" height="40">
			                    <h7>${list.fullname}</h7>
			                    <p style="padding-left:45px">${list.cmtgrammarcontent}</p>
				 </c:forEach>
              </div>
         
       
        
       
	    </div>
	    </div>
	</div>
      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="bg-secondary">

        <div class="container">
          <div class="row">
            <div class="col-12 col-sm-12 col-lg-6 mb-4 order-0 order-sm-0"><a class="text-decoration-none" href="#"><img src="assets/img/gallery/footer-logo.png" height="51" alt="" /></a>
              <p class="text-light my-4"> <i class="fas fa-map-marker-alt me-3"></i><span class="text-light">1500 Treat Ave, Suite 200  &nbsp;</span><a class="text-light" href="tel:+604-680-9785">+604-680-9785</a><br />San Francisco, CA 94110</p>
              <p class="text-light"> <i class="fas fa-envelope me-3"> </i><a class="text-light" href="mailto:vctung@outlook.com">vctung@outlook.com </a></p>
              <p class="text-light"> <i class="fas fa-phone-alt me-3"></i><a class="text-light" href="tel:1-800-800-2299">1-800-800-2299 (Support)</a></p>
            </div>
            <div class="col-6 col-sm-4 col-lg-2 mb-3 order-2 order-sm-1">
              <h5 class="lh-lg fw-bold mb-4 text-light font-sans-serif">Community </h5>
              <ul class="list-unstyled mb-md-4 mb-lg-0">
                <li class="lh-lg"><a class="text-200" href="#!">Learners</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Partners</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Developers</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Beta Testers</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Translators</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Blog</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Tech Blog</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Teaching Center</a></li>
              </ul>
            </div>
            <div class="col-6 col-sm-4 col-lg-2 mb-3 order-3 order-sm-2">
              <h5 class="lh-lg fw-bold text-light mb-4 font-sans-serif">Informations</h5>
              <ul class="list-unstyled mb-md-4 mb-lg-0">
                <li class="lh-lg"><a class="text-200" href="#!">About</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Pricing</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Blog</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Careers</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Contact</a></li>
              </ul>
            </div>
            <div class="col-6 col-sm-4 col-lg-2 mb-3 order-3 order-sm-2">
              <h5 class="lh-lg fw-bold text-light mb-4 font-sans-serif"> More</h5>
              <ul class="list-unstyled mb-md-4 mb-lg-0">
                <li class="lh-lg"><a class="text-200" href="#!">Press</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Investors</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Terms</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Privacy</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Help</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Accessibility</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Contact</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Articles</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Directory</a></li>
                <li class="lh-lg"><a class="text-200" href="#!">Affiliates</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
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
     <!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
    <script src="template/vendors/@popperjs/popper.min.js"></script>
    <script src="template/vendors/bootstrap/bootstrap.min.js"></script>
    <script src="template/vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="template/vendors/fontawesome/all.min.js"></script>
    <script src="template/assets/js/theme.js"></script>
</body>
</html>