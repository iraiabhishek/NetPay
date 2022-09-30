
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
                                        <li><a class="table-responsive table-dark text-center" href="index.jsp">Login</a></li>
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
                                        <li><a class="table-responsive table-dark text-center" href="Logout">Logout</a></li>
                                    </ul>
                                </div>
                        <%
                            }
                        %>		
                </div>
            </div><!--end container-->
        </nav><!--end navigation bar-->	
		
        <div class="container"><br>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="text-center">Welcome <%=ud.get("name") %></h3>
                </div><br>
                <div class="panel-body">
                    <div class="col-lg-10 col-lg-offset-1">
                        <form action="UpdateProfile" id="form" method="post" enctype="multipart/form-data" class="form-horizontal">
                            <div class="form-group">
                                <label for="name" class="col-lg-2 control-label">Name:</label>
                                <div class="col-lg-10">
                                    <input type="text"  class="form-control" name="name" id="name" value="<%=ud.get("name") %>" required=""/>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="fname" class="col-lg-2 control-label">Father's Name:</label>
                                <div class="col-lg-10">
                                    <input type="text"  class="form-control" name="fname" id="name" value="<%=ud.get("fname") %>" required=""/>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="mname" class="col-lg-2 control-label">Mother's Name:</label>
                                <div class="col-lg-10">
                                    <input type="text"  class="form-control" name="mname" id="name" value="<%=ud.get("mname") %>" required=""/>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="dob" class="col-lg-2 control-label">Date of Birth:</label>
                                <div class="col-lg-10">
                                    <input type="date"  class="form-control" name="dob" id="dob" value="<%=ud.get("dob") %>" required=""/><br>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="gen" class="col-lg-2 control-label">Gender:</label>
                                <div class="col-lg-10">
                                    <select class="form-control" name="gen" id="gender" placeholder="Gender" required="">
                                        <option value="" selected disabled hidden>Select an Option</option>
                                        <option value="Male" >Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="marital" class="col-lg-2 control-label">Marital Status:</label>
                                <div class="col-lg-10">
                                    <select class="form-control" name="marital" id="marital" placeholder="Specify your marital status" required="">
                                        <option value="" selected disabled hidden>Select an Option</option>
                                        <option value="Unmarried">Unmarried</option>
                                        <option value="Married" >Married</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="email" class="col-lg-2 control-label">Email:</label>
                                <div class="col-lg-10">
                                    <input type="email" class="form-control" name="email" id="email" value="<%=ud.get("email") %>" required="" readonly />
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="phone" class="col-lg-2 control-label">Phone:</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="phone" id="phone" value="<%=ud.get("phone") %>" required=""/>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="address" class="col-lg-2 control-label">Address:</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="address" id="address" value="<%=ud.get("address")%>" required=""/>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="aadhar" class="col-lg-2 control-label">Aadhar Number:</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="aadhar" id="aadhar" value="<%=ud.get("aadhar")%>" required=""/>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="pan" class="col-lg-2 control-label">PAN Number:</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="pan" id="pan" value="<%=ud.get("pan")%>" required=""/>
                                </div>
                            </div><!--end form group-->
                            <div class="form-group">
                                <label for="password" class="col-lg-2 control-label">Profession:</label>
                                <div class="col-lg-10">
                                    <select name="profession" class="form-control" id="profession" placeholder="Profession" required="">
                                        <option value="" selected disabled hidden>Select an Option</option>
                                        <option value="Professional" >Professional</option>
                                        <option value="Government Job">Government Job</option>
                                        <option value="Private Sector Job">Private Sector Job</option>
                                        <option value="Public Sector Job">Public Sector Job</option>
                                        <option value="Business">Business</option>
                                        <option value="Student">Student</option>
                                        <option value="Housewife">Housewife</option>
                                        <option value="Retired">Retired</option>
                                        <option value="Self Employed">Self Employed</option>
                                        <option value="Others">Others</option>
                                    </select>
                                </div>
                            </div><!--end form group-->
<!--                            <div class="form-group">
                                <label for="photo" class="col-lg-2 control-label">Photo:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" type="file" name="photo" size="4096" placeholder="Photo" required=""/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="signature" class="col-lg-2 control-label">Signature:</label>
                                <div class="col-lg-10">
                                    <input class="form-control" type="file" name="signature" size="4096" placeholder="Signature" required=""/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="acopdt" class="col-lg-2 control-label">A/C Open Date:</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="acopdt" id="acopdt" placeholder="A/C Opening date" required=""/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="brname" class="col-lg-2 control-label">Branch Name:</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="brname" id="pan" placeholder="Enter you Branch Name" required=""/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="braddress" class="col-lg-2 control-label">Branch Address:</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="braddress" id="pan" placeholder="Enter you Bank Address" required=""/>
                                </div>
                            </div>-->
                            <div class="form-group">
                                <label for="password" class="col-lg-2 control-label">Password:</label>
                                <div class="col-lg-10">
                                    <input type="password" class="form-control" name="pass" id="pass" placeholder="Enter your password to confirm changes" required=""/>
                                </div>
                            </div>
                            
                            
                            <div class="submit text-center col-lg-2 col-lg-offset-5">
                                <button type="submit" class="btn btn-success">Save changes</button>
                            </div>
                        </form>
                    </div>
                </div>
                <br><hr>
                <div class="panel-body">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="container">
                            <div class="row">
                                <form action="UpdatePhoto" method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="form-group"  style="margin: 0px 0px 0px 25px">
                                        <div class="col-lg-1">
                                            <img src="GetPhoto?email=<%=ud.get("email")%>"
                                                 border="5px" align="center" width="120px" height="120px" alt="Photo">
                                        </div><br><br>
                                        <label for="changephoto" class="col-lg-2 control-label">Change Photo:</label>
                                        <div class="form-group">
                                            <div class="col-lg-2">
                                                <input class="form-control" type="file" name="photo" size="4096" required/>
                                            </div>
                                            <div class="col-lg-2">
                                                <button type="submit" class="btn btn-success">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <form action="UpdateSignature" method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="form-group" style="margin: 0px 0px 0px 25px">
                                        <div class="col-lg-1">
                                            <img src="GetSignature?email=<%=ud.get("email")%>"
                                                 border="5px" align="center" width="120px" height="60px" alt="Signature">
                                        </div><br>
                                        <label for="changephoto" class="col-lg-2 control-label">Change Signature:</label>
                                        <div class="form-group">
                                            <div class="col-lg-2">
                                                <input class="form-control" type="file" name="sign" size="4096" required/>
                                            </div>
                                            <div class="col-lg-2">
                                                <button type="submit" class="btn btn-success">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
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