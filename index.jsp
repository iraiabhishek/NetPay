<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>NetPay</title>
        <link rel="icon" href="bootstrap/images/nbi.ico" type="image/x-icon">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Corporate Bank a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap/css/custom.css" rel="stylesheet">
        <script src="bootstrap/countries.js"></script>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        .fa {
          padding: 10px;
          font-size: 20px;
          width: 40px;
          text-align: center;
          text-decoration: none;
          margin: 5px 5px;
          border-radius: 100%;
        }

        .fa:hover {
            opacity: 0.7;
        }

        .fa-facebook {
          background: #3B5998;
          color: white;
        }

        .fa-twitter {
          background: #55ACEE;
          color: white;
        }

        .fa-google {
          background: #dd4b39;
          color: white;
        }

        .fa-linkedin {
          background: #007bb5;
          color: white;
        }

        .fa-instagram {
          background: #125688;
          color: white;
        }
        </style>
        <style>
            body {
              background-image: url('bootstrap/images/bg.jpg');
            }
        </style>
    </head>
<!-- //Head -->

<!-- Body -->
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">NetPay</a>
                </div><!--end of header inside navigation bar-->
                <div class="navbar-collapse collapse">
                        <%
                            HashMap ud=(HashMap)session.getAttribute("userdata");
                            if(ud==null){
                        %>
                                <div class="dropdown pull-right">
                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle navbar-brand">Services<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="table-responsive table-dark text-center" href="register.jsp">Register</a></li>
                                    </ul>
                                </div>
                        <%
                            }else{
                        %>
                                <div class="dropdown pull-right">
                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle navbar-brand"><%=ud.get("name")%> <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="table-responsive table-dark text-center" href="profile.jsp">Profile</a></li>
                                        <li><a class="table-responsive table-dark text-center" href="transfer.jsp">Pay Money</a></li>
                                        <li><a class="table-responsive table-dark text-center" href="details.jsp">Transaction Details</a></li>
                                        <li><a class="table-responsive table-dark text-center" href="changepassword.jsp">Change Password</a></li>
                                        <li><a class="table-responsive table-dark text-center" href="Logout">Logout</a><li>
                                    </ul>
                                </div>
                        <%
                            }
                        %>		
                </div>
            </div><!--end container-->
        </nav><!--end navigation bar-->	
	<br/><br/><br/><br/>
        
        <div class="container">
            <section>
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="panel panel-default">
                            <div class="panel-heading text-center">
                                <h3>LOGIN HERE</h3>
                            </div>
                            <div class="panel-body">
                                <form action="LoginProcess" class="form-horizontal">
                                    <div class="form-group">
                                        <label for="email" class="col-lg-2 control-label">Email:</label>
                                        <div class="col-lg-10">
                                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email"/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="password" class="col-lg-2 control-label">Password:</label>
                                        <div class="col-lg-10">
                                            <input type="password" class="form-control" name="pass" id="password" placeholder="Enter your name"/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <div class="col-lg-10 col-lg-offset-2">
                                            <button type="submit" class="btn btn-success">Login</button>
                                            <button type="reset" class="btn btn-info">Reset</button>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-10 col-lg-offset-2">
                                            <a href="forgetpassword.jsp">Forget Password ?</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!--end of Features-->
	
	<!--footer-->
	<div class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="container-fluid">
                <div class="navbar-text pull-left">
                    <p>DEVELOPED BY ABHISHEK RAI</p>
                </div>
                <div class="navbar-fixed-bottom col-lg-offset-5">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-google"></a>
                    <a href="#" class="fa fa-linkedin"></a>
                    <a href="#" class="fa fa-instagram"></a>
                </div>
                <div class="navbar-text pull-right">
                    <p>Copyright &copy; NetPay 2021</p>
                </div>
            </div>
	</div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>