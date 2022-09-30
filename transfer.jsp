<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.DbConnect"%>
<%@page import="java.util.HashMap"%>
<%
    HashMap ud=(HashMap)session.getAttribute("userdata");
    if(ud!=null){
%>
<!DOCTYPE html>
<html lang="en">
    <head>
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
                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle navbar-brand"><%=ud.get("name")%> <b class="caret"></b></a>
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
        
        <div class="container text-center" >
            <section>
                <div class="panel panel-default">
                    <div class="panel-heading text-center">
                        <h1><b>Fund transfer</b></h1>
                    </div>
                    <div class="panel-body"></br>
                        <div class="panel-body">
                            <form action="TransactionProcess" method='post' class="form-horizontal">
                                <div class="form-group">
                                    <label for="name" class="col-lg-2 control-label">Receiver Name:</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="rname" id="rname" placeholder="Enter name"/>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="email" class="col-lg-2 control-label">Receiver Email:</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="remail" id="remail" placeholder="Enter email"/>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="text" class="col-lg-2 control-label">Money:</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="money" id="money" placeholder="Enter amount to transfer"/>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="password" class="col-lg-2 control-label">Password:</label>
                                    <div class="col-lg-10">
                                        <input type="password" class="form-control" name="confirmpass" id="ypass" placeholder="Enter your password"/>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <div class="col-lg-4 col-lg-offset-4">
                                        <button type="submit" class="btn btn-warning ">Transfer</button>
                                        <button type="reset" class="btn btn-info">Reset</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
<%
    }else{
        session.setAttribute("msg","Please Login First !");
        response.sendRedirect("error.jsp");
    }
%>