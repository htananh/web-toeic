<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div id="wrapper">

        <!-- Sidebar -->
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
                        
                   
               

           
                <!-- /.container-fluid -->
               <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                  
                        <div class="card-header py-3">
                        
                        <h6><%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %></h6>
                        
                            <h6 class="m-0 font-weight-bold text-primary">Cập nhật bài đọc</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    
                                    
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên bài đọc</th>
                                            <th>Hình ảnh bài đọc</th>
                                            <th>xóa</th>
                                            <th>Thêm hình ảnh</th>
                                            <th>Cập nhật nội dung bài đọc</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                      
                                       <c:forEach var="list" items="${ListReadexecise}">
		  
										        <tr>
										        <td>
										        	${list.readexeciseid}
										        </td>
										          <td>
										        	${list.readame}
										        </td>
										          <td>
										        	${list.readimage}
										        </td>
										         <td>  <a href="DeleteReadexeciseController?readexeciseid=${list.readexeciseid}" class="btn btn-danger btn-circle btn-sm">
                                        <i class="fas fa-trash"></i>
                                    </a></td>
                                            <td> <form method="POST" enctype="multipart/form-data" action="UploadimageReadexecise?readexeciseid=${list.readexeciseid}">
		        
	  			<input type="file" name="upfile"><br/>
	 			
	  				<div class="modal-footer">
	        <button type="submit" class="btn btn-primary">Save changes</button>
	      </div>
				</form></td>
				<td>
				<form method="POST" enctype="multipart/form-data" action="UploadfileExeclReadexecise?readexeciseid=${list.readexeciseid}">
		        
	  			<input type="file" name="upfileecel"><br/>
	 			
	  				<div class="modal-footer">
	        	<button type="submit" class="btn btn-primary">Save changes</button>
	         		</div>
				</form>
				</td>
										        </tr>
										       
										    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
						<button class="btn btn-success btn-icon-split" type="button" class="btn btn-primary" data-toggle="modal" data-target="#examination">
  										
  										 <span class="icon text-white-50">
                                            <i class="fas fa-pen"></i>
                                       
                                        </span>
                                        <span class="text">thêm tên bài thi</span>
								</button>
								
           				<br>
           				<br>
                      <c:choose>
	<c:when test="${pageNumber==1}">
    <ul class="pagination">
    <li  class="disabled page-item"><a class="page-link" href="">Previous</a></li>
    <li  class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=1">1</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=2">2</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=${pageNumber+1}">Next</a></li>
  </ul>
  </c:when>
  <c:when test="${pageNumber==MaxDisplay}">
    <ul class="pagination">
    <li class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=${pageNumber-1}">Previous</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=1">1</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=2">2</a></li>
    <li class="disabled page-item"><a class="page-link" href="">Next</a></li>
  </ul>
  </c:when>
  <c:otherwise>
    <ul class="pagination">
    <li class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=${pageNumber-1}">Previous</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=1">1</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=2">2</a></li>
    <li class="page-item"><a style="color:black;" class="page-link" href="readexeciseAdminController?page=${pageNumber+1}">Next</a></li>
  </ul>
  </c:otherwise>
</c:choose>
                                  
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            <!-- End of Main Content -->

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
	<div class="modal fade" id="examination" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Thêm tên</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        
	         <form method="POST"  action=readexeciseAdminController>
		       <input type="text" name="readname">
	  			
	  				<div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-primary">Save changes</button>
	      </div>
				</form>
	      </div>
	      
	    </div>
	  </div>
	</div>
	
	
	 <!-- Hình ảnh -->
	<div class="modal fade" id="examinationquestion" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Thêm Hình ảnh và File Âm Thanh</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        	
		        <form method="POST" enctype="multipart/form-data" action=UploadImageAndSoundExamination>
		        
	  			<input type="file" name="upfile"><br/>
	 				
	 			
	 			 	<div id="fileInputs">  </div>
	  				<div class="modal-footer">
	  		<input type="button" value="add file upload" class="btn btn-primary" onclick="addFileInput()" class="add-file-button">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="submit" class="btn btn-primary">Save changes</button>
	      </div>
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
    <script>
function addFileInput() {
  var fileInputs = document.getElementById("fileInputs");
  var newFileInput = document.createElement("input");
  newFileInput.type = "file";
  newFileInput.name = "file";
  fileInputs.appendChild(newFileInput);
}
</script>
</body>
</html>