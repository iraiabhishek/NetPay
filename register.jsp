<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>NetPay</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap/css/custom.css" rel="stylesheet">
        <script src="bootstrap/countries.js"></script>
        <style>
            body {
              background-image: url('bootstrap/images/bg.jpg');
            }
        </style>
    </head>
    
    <body data-spy="scroll" data-target="#my-navbar">
        <!--navigation bar-->
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
                                        <li><a class="table-responsive table-dark text-center" href="Logout">Logout</a></li>
                                    </ul>
                                </div>
                        <%
                            }
                        %>		
                </div>
            </div><!--end container-->
        </nav><!--end navigation bar-->	
	
        <!--Features-->
        <div class="container">
            <section>
                <div class="row">
                <!--Left Side-->
                    <div class="col-lg-10 col-lg-offset-1">
                        <div class="panel panel-default">
                            <div class="panel-heading text-center">
                                <h3>Create An Account</h3>
                            </div>
                            <div class="panel-body">
                                <form id="form" action="Register" method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="form-group">
                                        <label for="name" class="col-lg-3 control-label">Name:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" name="name" id="name" placeholder="Enter your name" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="fname" class="col-lg-3 control-label">Father's Name:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" name="fname" id="fname" placeholder="Enter your father's name" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="mname" class="col-lg-3 control-label">Mother's Name:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" name="mname" id="name" placeholder="Enter your mother's name" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="dob" class="col-lg-3 control-label">Date of Birth:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="date" name="dob" id="dob" placeholder="Enter your date of birth" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="gen" class="col-lg-3 control-label">Gender:</label>
                                        <div class="col-lg-9">
                                            <select class="form-control" name="gen" id="gender" placeholder="Gender" required="">
                                                <option value="" selected disabled hidden>Select an Option</option>
                                                <option value="Male" >Male</option>
                                                <option value="Female">Female</option>
                                                <option value="Others">Others</option>
                                            </select>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="marital" class="col-lg-3 control-label">Marital Status:</label>
                                        <div class="col-lg-9">
                                            <select class="form-control" name="marital" id="marital" placeholder="Specify your marital status" required="">
                                                <option value="" selected disabled hidden>Select an Option</option>
                                                <option value="Unmarried">Unmarried</option>
                                                <option value="Married" >Married</option>
                                                <option value="Others">Others</option>
                                            </select>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="email" class="col-lg-3 control-label">Email:</label>
                                        <div class="col-lg-9">
                                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="phone" class="col-lg-3 control-label">Phone:</label>
                                        <div class="col-lg-9">
                                            <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone number" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="address" class="col-lg-3 control-label">Address:</label>
                                        <div class="col-lg-9">
                                            <input type="text" class="form-control" name="address" id="location" placeholder="Enter you address" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="country" class="col-lg-3 control-label">Country:</label>
                                        <div class="col-lg-9">
                                            <select class="form-control" id="country" name="country"></select>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="state" class="col-lg-3 control-label">State:</label>
                                        <div class="col-lg-9">
                                            <select class="form-control" name="state" id="state"></select>
                                        </div>
                                    </div><!--end form group-->
                                    <script language="javascript">
                                        populateCountries("country", "state");
                                        populateCountries("country");
                                    </script>
                                    <div class="form-group">
                                        <label for="password" class="col-lg-3 control-label">Password:</label>
                                        <div class="col-lg-9">
                                            <input type="password" class="form-control" name="pass" id="pass" placeholder="Enter your password" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="password" class="col-lg-3 control-label">Confirm Password:</label>
                                        <div class="col-lg-9">
                                            <input type="password" class="form-control" name="cpass" id="cpass" placeholder="Confirm your password" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="aadhar" class="col-lg-3 control-label">Aadhar Number:</label>
                                        <div class="col-lg-9">
                                            <input type="text" class="form-control" name="aadhar" id="aadhar" placeholder="Confirm your Aadhar number" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="pan" class="col-lg-3 control-label">PAN Number:</label>
                                        <div class="col-lg-9">
                                            <input type="text" class="form-control" name="pan" id="pan" placeholder="Confirm your pan number" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="password" class="col-lg-3 control-label">Profession:</label>
                                        <div class="col-lg-9">
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
                                    <div class="form-group">
                                        <label for="photo" class="col-lg-3 control-label">Photo:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="file" name="photo" size="4096" placeholder="Photo" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="signature" class="col-lg-3 control-label">Signature:</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="file" name="signature" size="4096" placeholder="Signature" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <!--<div class="form-group">
                                        <label for="acopdt" class="col-lg-3 control-label">A/C Open Date:</label>
                                        <div class="col-lg-9">
                                            <input type="text" class="form-control" name="acopdt" id="acopdt" placeholder="A/C Opening date" required=""/>
                                        </div>
                                    </div>-->
                                    <div class="form-group">
                                        <label for="brname" class="col-lg-3 control-label">Branch Name:</label>
                                        <div class="col-lg-9">
                                            <input type="text" class="form-control" name="brname" id="pan" placeholder="Enter you Branch Name" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <label for="braddress" class="col-lg-3 control-label">Branch Address:</label>
                                        <div class="col-lg-9">
                                            <input type="text" class="form-control" name="braddress" id="pan" placeholder="Enter you Bank Address" required=""/>
                                        </div>
                                    </div><!--end form group-->
                                    <div class="form-group">
                                        <div class="col-lg-3 col-lg-offset-5">
                                            <button type="submit" value="Sign Up" class="btn btn-warning">Register</button>
                                            <button type="reset" class="btn btn-info">Reset</button>
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
	
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>