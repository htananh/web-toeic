<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Content</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">



    <!-- Custom fonts for this template-->
    <link href="template/backend/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="template/backend/css/sb-admin-2.min.css" rel="stylesheet">
    
    
 

  <link data-require="bootstrap-css@3.1.1" data-semver="3.1.1" rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />
  <link data-require="fontawesome@4.1.0" data-semver="4.1.0" rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" />
  <link rel="stylesheet" href="https://cdn.rawgit.com/toopay/bootstrap-markdown/master/css/bootstrap-markdown.min.css" />
  <link rel="stylesheet" href="template/markdown/style.cs" />
  

</head>
<body>
	<div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Trang Quản Trị  </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

           

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

           
				 <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Phần Hướng dẫn học</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom GuideLine:</h6>
                        <a class="collapse-item" href="VocabularyGuideLineForward?page=1">Từ Vựng</a>
                        <a class="collapse-item" href="GrammarGuideLineForward">Ngữ Pháp</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
             <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Quản lí đề thi</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="examinationAdminController">Update đề thi</a>
                        
                       
                    </div>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#ollapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Quản lí bài tập đọc nghe</span>
                </a>
                <div id="ollapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="readexeciseAdminController?page=1">Bài tập đọc</a>
                        <a class="collapse-item" href="listenexeciseAdminController?page=1">Bài tập nghe</a>
                       
                    </div>
                </div>
            </li>

       

            

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

		 
            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                   

                    
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                       

                   

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small" style="font-size:27px"><%= session.getAttribute("SSadmimname") %></span>
                                <img class="img-profile rounded-circle"
                                    src="template/backend/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
             

                        

                            <!-- Approach -->
                            <div class="container-fluid">

                    <!-- 404 Error Text -->
                    <div class="text-center">
                      <form action="GramarGuideLineContentController?grammarguidelineid=<%=request.getAttribute("grammarguidelineid")%>" method="post">
                      
                      
                         <div class="row">
								    <div class="col-md-12">
								      <h1>Thêm nội dung bài hướng dẫn</h1>
								      <textarea id="comment-md" name="content" placeholder="Say something..."></textarea>
								       <br />
								      <button type="submit" class="btn btn-primary">Save changes</button>
								      <br />
								       <br />
								      <div id="comment-md-preview-container">
								        <div class="well well-sm well-light md-preview margin-top-10" id="comment-md-preview"></div>
								      </div>
								    </div>
								  </div>
                      </form>
                      
                    </div>
                            
                  </div>   
                   </div>    
                     <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Ho Tan Anh 7/2023</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <form action="LogoutController" method="post" class="btn btn-secondary" 	>
                    	<button type="submit">Logout</button>
                    </form>
                   
                </div>
            </div>
        </div>
    </div>
   <!-- Modal -->
    <!-- Bootstrap core JavaScript-->
    <script src="template/backend/vendor/jquery/jquery.min.js"></script>
    <script src="template/backend/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="template/backend/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="template/backend/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="template/backend/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="template/backend/js/demo/chart-area-demo.js"></script>
    <script src="template/backend/js/demo/chart-pie-demo.js"></script>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script data-require="bootstrap@3.1.1" data-semver="3.1.1" src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
  <script data-require="marked@*" data-semver="0.3.1" src="http://cdnjs.cloudflare.com/ajax/libs/marked/0.3.1/marked.js"></script>
  <script src="https://cdn.rawgit.com/toopay/bootstrap-markdown/master/js/bootstrap-markdown.js"></script>
  <script src="https://rawgit.com/lodev09/jquery-filedrop/master/jquery.filedrop.js"></script>
  <script src="https://rawgit.com/jeresig/jquery.hotkeys/master/jquery.hotkeys.js"></script>
    <script src="template/markdown/script.js"></script>
	
</body>
</html>