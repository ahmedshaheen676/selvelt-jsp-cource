<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/AdminLTE.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href=""><b> welcome to our website </b></a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <%
        String messages = (String)request.getAttribute("messages");
         if (messages != null && !messages.equals("")) { 
        %>
    		<p style="color: red;"><%= messages %></p>
        <%
          }
        %>
        <p class="login-box-msg">
            <b>
                please login in
            </b>
        </p>

        <form class="form-signin" method="post" action="/day3-lab1/login">
            <div class="form-group has-feedback">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                <input autofocus="autofocus"
                       class="form-control text-center"
                       id="username"
                       name="username"
                       placeholder="user name"
                       required="required"
                       type="text">

            </div>

            <div class="form-group has-feedback">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                <input class="form-control text-center" id="password"
                       name="password"
                       placeholder="password"
                       required="required"
                       type="password">

            </div>
            <div class="row">
                <!-- /.col -->
                <div class="col-xs-4">
                    <button class="btn btn-primary btn-block btn-flat" type="submit">login</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
        <hr>
        <div class="row">
            <div class="col-xs-6">
                <a class="text-right" href="#">
                    <b>
                        forget password
                    </b>
                </a>
            </div>
            <div class="col-xs-6">
                <a class="pull-right" href="register.jsp">
                    <b>
                        sign up
                    </b>
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
