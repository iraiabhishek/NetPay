
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HashMap ud=(HashMap)session.getAttribute("userdata");
    if(ud!=null){
%>
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
        <style>
            body {
              background-image: url('bootstrap/images/bg.jpg');
            }
        </style>
    </head>
<!-- //Head -->

    <body data-spy="scroll" data-target="#my-navbar">
        <nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">NetPay</a>
                </div><!--end of header inside navigation bar-->
                <div class="navbar-collapse collapse">
                        <%
                            if(ud==null){
                        %>
                                <div class="dropdown pull-right">
                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle navbar-brand">Services<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="table-responsive table-dark text-center" href="register.jsp">Profile</a></li>
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
        	
        <div class="container"><br>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="text-center">Change your Password</h3>
                </div><br>
                <div class="panel-body">
                    <div class="col-lg-10 col-lg-offset-1">
                        <form action="UpdatePassword" method="post">
                            <div class="form-group">
                                <label for="name" class="col-lg-3 control-label">Name:</label>
                                <div class="col-lg-9">
                                    <label for="name" class="col-lg-9 control-label"><%=ud.get("name") %></label>
                                </div><br/>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="email" class="col-lg-3 control-label">E-mail:</label>
                                <div class="col-lg-9">
                                    <label for="email" class="col-lg-9 control-label"><%=ud.get("email") %></label>
                                </div><br/>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="cpassword" class="col-lg-3 control-label">Current Password:</label>
                                <div class="col-lg-9">
                                    <input type="password" class="form-control" name="cpass" id="cpass" placeholder="Enter your current password" required=""/>
                                </div><br/>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="npassword" class="col-lg-3 control-label">New Password:</label>
                                <div class="col-lg-9">
                                    <input type="password" class="form-control" name="npass" id="npass" placeholder="Enter new password" required=""/>
                                </div><br/>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="cnpassword" class="col-lg-3 control-label">Confirm New Password:</label>
                                <div class="col-lg-9">
                                    <input type="password" class="form-control" name="cnpass" id="cnpass" placeholder="Confirm new password" required=""/>
                                </div>
                            </div><!--end form group-->
                            <br/><br/>
                            <div class="submit text-center col-lg-1 col-lg-offset-5">
                                <button type="submit" class="btn btn-success">Save changes</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
                
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    
  </body>
</html>
<%
    }else{
        session.setAttribute("msg","Plz Login First!");
            response.sendRedirect("index.jsp");
    }
%>