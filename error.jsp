<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            HashMap ud=(HashMap)session.getAttribute("userdata");
                            if(ud==null){
                        %>
                                <div class="dropdown pull-right">
                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle navbar-brand">Services<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a class="table-responsive table-dark text-center" href="login.jsp">Profile</a></li>
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
        
        <div class="container text-center" >
            <section>
                <div class="panel panel-default">
                    <div class="panel-heading text-center">
                        <h1><b>Message</b></h1>
                    </div>
                    <div class="panel-body"></br></br>
                        <form action="" class="form-horizontal">
                            <div class="form-group">
                                <h3>
                                    <%
                                        if(!(session.getAttribute("msg").equals("Your account has been deleted !"))){
                                    %>
                                            <%=session.getAttribute("msg")%>
                                    <%
                                        }else{
                                    %>
                                            <%=session.getAttribute("msg")%>
                                    <%        session.invalidate();
                                        }
                                    %>
                                </h3>
                            </div><!--end form group-->
                        </form>
                    </div>
                </div>
            </section>
        </div>
        <hr>
            
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>