<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
 <link href="template/backend/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="template/backend/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
	 <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
        
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                            <h2 style="color: red"><%= request.getAttribute("message")!=null?request.getAttribute("message"): " " %></h2>
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form class="user" action="RegisterController" method="post">
                                <div class="form-group">
                                    <div class=" mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="Enter Name Login" name="membername">
                                    </div>
                                    
                                </div>
                                <div class="form-group">
                                    <div class=" mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="Full Name" name="fullname">
                                    </div>
                                    
                                </div>
                                
                                <div class="form-group ">
                                    <div class=" mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="Password" name="memberpass">
                                    </div>
                                   
                                </div>
                                <button type="submit" class="btn btn-primary btn-user btn-block">
                                Register Account
                                </button>
                                
                                <hr>
                                <a  class="btn btn-google btn-user btn-block" onclick="notifyFeatureUpdate()">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a  class="btn btn-facebook btn-user btn-block" onclick="notifyFeatureUpdate()">
                                    <i class="fab fa-facebook-f fa-fw" ></i> Register with Facebook
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" onclick="notifyFeatureUpdate()">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="LoginForward">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="template/backend/vendor/jquery/jquery.min.js"></script>
    <script src="template/backend/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="template/backend/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="template/backend/js/sb-admin-2.min.js"></script>
    <script type="text/javascript">
    function notifyFeatureUpdate() {
    	 
    	  // Hoặc bạn có thể sử dụng hộp thoại cửa sổ thông báo:
    	  alert("Chức năng này đang được bổ sung!");
    	}

    </script>
	
</body>
</html>