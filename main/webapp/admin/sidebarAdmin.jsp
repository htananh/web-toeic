<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
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

</head>
<body>
	<!-- Page Wrapper -->
   

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
                        <a class="collapse-item" href="VocabularyGuideLineForward">Từ Vựng</a>
                        <a class="collapse-item" href="GrammarGuideLineForward?page=1">Ngữ Pháp</a>
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
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Quản lí bài tập đọc nghe</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="examinationAdminController">Bài tập đọc</a>
                        <a class="collapse-item" href="utilities-border.html">Bài tập nghe</a>
                       
                    </div>
                </div>
            </li>

       

            

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
    

                   

                    
                    <!-- Topbar Navbar -->
        
  

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
</body>
</html>