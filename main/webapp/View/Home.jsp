<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>
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

		
     
      <section class="pt-6 bg-600" id="home">
      
        <div class="container" id="ketqua">
          <div class="row align-items-center">
            <div class="col-md-5 col-lg-6 order-0 order-md-1 text-end"><img class="pt-7 pt-md-0 w-100" src="template/assets/img/gallery/hero-header.png" width="470" alt="hero-header" /></div>
            <div class="col-md-7 col-lg-6 text-md-start text-center py-6">
              <h4 class="fw-bold font-sans-serif">Luyện Thi Toeic</h4>
              <h1 class="fs-6 fs-xl-7 mb-5">Learn New Skills Online Find Best Courses</h1>
            </div>
          </div>
        </div>
      </section>


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-0" style="margin-top:-5.8rem">

        <div class="container">
          <div class="row">
            <div class="card card-span bg-secondary">
              <div class="card-body">
                <div class="row flex-center gx-0">
                  <div class="col-lg-4 col-xl-2 text-center text-xl-start"><img src="template/assets/img/gallery/funfacts.png" width="170" alt="..." /></div>
                  <div class="col-lg-8 col-xl-4">
                    <h1 class="text-light fs-lg-4 fs-xl-5">Upcoming Our <span class="text-primary">Basic in Toeic </span>Course!</h1>
                  </div>
                  <div class="col-lg-12 col-xl-6">
                    <h1 class="display-1 text-light text-center text-xl-end">10/2023</h1>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->




      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section>

        <div class="container">
          <div class="row">
            <h1 class="text-center mb-5"> Top  Courses</h1>
            <div class="col-md-4 mb-4">
              <div class="card h-100"><img class="card-img-top w-100" src="template/assets/img/gallery/design.png" alt="courses" />
                <div class="card-body">
                  <h5 class="font-sans-serif fw-bold fs-md-0 fs-lg-1">Hướng dẫn học phần ngữ pháp</h5><a class="text-muted fs--1 stretched-link text-decoration-none" href="GrammarGuideLineUser?page=1">The Museum of Modern Art</a>
                </div>
              </div>
            </div>
            <div class="col-md-4 mb-4">
              <div class="card h-100"><img class="card-img-top w-100" src="template/assets/img/gallery/psychology.png" alt="courses" />
                <div class="card-body">
                  <h5 class="font-sans-serif fw-bold fs-md-0 fs-lg-1">Hướng dẫn học từ vựng</h5><a class="text-muted fs--1 stretched-link text-decoration-none" href="VocabularyGuideLineUser?page=1">The Museum of Modern Art</a>
                </div>
              </div>
            </div>
            <div class="col-md-4 mb-4">
              <div class="card h-100"><img class="card-img-top w-100" src="template/assets/img/gallery/philosophy.png" alt="courses" />
                <div class="card-body">
                  <h5 class="font-sans-serif fw-bold fs-md-0 fs-lg-1">Làm bài tập nghe</h5><a class="text-muted fs--1 stretched-link text-decoration-none" href="ListenexeciseUserController?page=1">Duke University</a>
                </div>
              </div>
            </div>
            <div class="col-md-4 mb-4">
              <div class="card h-100"><img class="card-img-top w-100" src="template/assets/img/gallery/photographs.png" alt="courses" />
                <div class="card-body">
                  <h5 class="font-sans-serif fw-bold fs-md-0 fs-lg-1">Làm bài tập đọc</h5><a class="text-muted fs--1 stretched-link text-decoration-none" href="ReadexeciseUserController?page=1">Duke University</a>
                </div>
              </div>
            </div>
            <div class="col-md-4 mb-4">
              <div class="card h-100"><img class="card-img-top w-100" src="template/assets/img/gallery/arguments.png" alt="courses" />
                <div class="card-body">
                  <h5 class="font-sans-serif fw-bold fs-md-0 fs-lg-1">Giải đề thi thử Online</h5><a class="text-muted fs--1 stretched-link text-decoration-none" href="ExaminationUserController?page=1">The Museum of Modern Art</a>
                </div>
              </div>
            </div>
           
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
    <script src="template/vendors/@popperjs/popper.min.js"></script>
    <script src="template/vendors/bootstrap/bootstrap.min.js"></script>
    <script src="template/vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="template/vendors/fontawesome/all.min.js"></script>
    <script src="template/assets/js/theme.js"></script>

    
</body>
</html>