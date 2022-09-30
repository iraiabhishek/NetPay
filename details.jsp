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
	<br/><br/>
        
        <div class="container text-center" >
            <section>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="text-center "><b>Transaction Overview</b></h3>
                        <!--<h4 class="text-center "><b>Opening Balance : &#x20B9; 0 /-</b></h4>-->
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <%
                                DbConnect db=(DbConnect)application.getAttribute("db");
                                if(db==null){
                                    db=new DbConnect();
                                    application.setAttribute("db",db);
                                }
                                PreparedStatement retTransactionList=db.getRetTransaction();
                                retTransactionList.setString(1, String.valueOf(ud.get("email")));
                                retTransactionList.setString(2, String.valueOf(ud.get("email")));
                                ResultSet rs=retTransactionList.executeQuery();
                            %>
                            <table border="1px" cellpadding="5px" cellspacing="0px" width="100%">
                                    <tr>
                                        <td><b>Recipient Name</b></td>
                                        <td><b>Recipient Email</b></td>
                                        <td><b>Time</b></td>
                                        <td><b>Transaction Reference</b></td>
                                        <td><b>Credit</b></td>
                                        <td><b>Debit</b></td>
                                        <td><b>Balance</b></td>
                                    </tr>
                            <%
                                    while(rs.next()){
                            %>
                                        <tr>
                                        <%
                                            //Debit time
                                            if(rs.getString(2).equals(String.valueOf(ud.get("name")))){
                                        %>    
                                            <td><%=rs.getString(4) %></td>
                                            <td><%=rs.getString(5) %></td>
                                            <td><%=rs.getTimestamp(6) %></td>
                                            <td><%=rs.getString(7) %></td>
                                            <td>-</td>
                                            <td>&#x20B9; <%=rs.getInt(8) %>/-</td>
                                            <td>&#x20B9; <%=rs.getInt(10) %>/-</td>
                                        <%
                                            }
                                            else{//Credit time
                                        %>
                                            <td><%=rs.getString(4) %></td>
                                            <td><%=rs.getString(5) %></td>
                                            <td><%=rs.getTimestamp(6) %></td>
                                            <td><%=rs.getString(7) %></td>
                                            <td>&#x20B9; <%=rs.getInt(8) %>/-</td>
                                            <td>-</td>
                                            <td>&#x20B9; <%=rs.getInt(11) %>/-</td>
                                        <%
                                            }
                                        %>
                                        </tr>
                            <%
                                    }
                            %>
                            </table>
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