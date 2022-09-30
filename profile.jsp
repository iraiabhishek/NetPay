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
	
        <style>
            .alignleft {
                    float: left;
                    width: 48%;
            }
            .alignright {
                    float: right;
                    width: 48%;
            }
            .aligncenter {
                    float: left;
                    margin: 0px 0px 0px 22px;
                    width: 1%;
            }            
            .row:after{
                content: "";
                display: table;
                clear: both;
            }
            .vl{
                border-left:1px solid gainsboro;
                height:895px;
            }
        </style>
        <div class="container" >
            <section>
                <div class="panel panel-default alignleft">
                    <div class="panel-heading text-left">
                        <h4><b>Basic details</b></h4>
                    </div><br>
                    <div class="panel-body" padding="" >
                        <form action="editprofile.jsp" class="form-horizontal">
                            <div class="form-group">
                                <div class="form-group">
                                    <div class="col-lg-3" style="margin:0px 0px 0px 220px">
                                        <img src="GetPhoto?email=<%=ud.get("email")%>"
                                             border="5px" align="center" width="120px" height="120px" alt="Photo">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-3" style="margin:0px 0px 0px 220px">
                                        <img src="GetSignature?email=<%=ud.get("email")%>"
                                             border="5px" align="center" width="120px" height="60px" alt="Signature">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Name:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("name") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Father's Name:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("fname") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Mother's Name:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("mname") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Date of Birth:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("dob") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Gender:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("gen") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Marital Status:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("marital") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="email" class="col-lg-4 control-label">Email:</label>
                                    <div class="col-lg-8">
                                        <label for="email" class="control-label"><%=ud.get("email") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="Phone" class="col-lg-4 control-label">Phone:</label>
                                    <div class="col-lg-8">
                                        <label for="phone" class="control-label"><%=ud.get("phone") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="location" class="col-lg-4 control-label">Address:</label>
                                    <div class="col-lg-8">
                                        <label for="location" class="control-label"><%=ud.get("address") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Aadhar No:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("aadhar") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">PAN No:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("pan") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Profession:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("prof") %></label>
                                    </div>
                                </div><!--end form group-->
                                <hr>
                                <div class="form-group">
                                    <div class="col-lg-4 col-lg-offset-4">
                                        <button type="submit" class="btn btn-primary">Edit Profile</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>                
                </div>
                <div class="aligncenter vl"></div>
                <div class="panel panel-default alignright">
                    <div class="panel-heading text-left">
                        <h4><b>Banking details</b></h4>
                    </div><br>
                    <div class="panel-body">
                        <form action="DeleteAccount" class="form-horizontal">
                            <div class="form-group">
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">National Bank A/C No:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("acno") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">IFSC Code:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("ifsc") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="balance" class="col-lg-4 control-label">A/c Balance:</label>
                                    <div class="col-lg-8">
                                        <label for="balance" class="control-label"> &#x20B9; <%=ud.get("acbal") %> /-</label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">A/c Open Date:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("acopdt") %> Hrs</label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Branch Name:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("brname") %></label>
                                    </div>
                                </div><!--end form group-->
                                <div class="form-group">
                                    <label for="name" class="col-lg-4 control-label">Branch Address:</label>
                                    <div class="col-lg-8">
                                        <label for="name" class="control-label"><%=ud.get("braddress") %></label>
                                    </div>
                                </div><!--end form group-->
                                <hr>
                                <div class="form-group">
                                    <div class="col-lg-4 col-lg-offset-4">
                                        <button type="submit" class="btn btn-danger">Close Account</button>
                                    </div>
                                </div>
                            </div>
                        </form>
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
        session.setAttribute("msg","Please login first !");
        response.sendRedirect("error.jsp");
    }
%>