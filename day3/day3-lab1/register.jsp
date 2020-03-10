<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/AdminLTE.css">
</head>
<body class="hold-transition login-page">
<!-- /.login-logo -->
<div class="register-box">
    <div class="register-logo">
        <a href="@{/}">
            <b>welcome to my website
            </b>
        </a>
    </div>

    <div class="register-box-body">
       <% if(request.getAttribute("messages")!=null){%>
             <div style="color: #FF0000;">request.getAttribute("messages")</div>
        <%}%>
        <p class="login-box-msg">regiter a new user to login </p>
        <form method="post" action="/day3-lab1/register">
            <div class="form-group has-feedback">
                <input class="form-control"
                       id="firstName"
                       name="firstName"
                       oninput="setCustomValidity('')"
                       oninvalid="this.setCustomValidity('please enter a valid first name')"
                       placeholder="first name"
                       required
                       type="text">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input class="form-control "
                       id="lastName"
                       name="lastName"
                       oninput="setCustomValidity('')"
                       oninvalid="this.setCustomValidity('please enter a valid last name')"
                       placeholder="last name"
                       required
                       type="text">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input class="form-control "
                       id="phone"
                       name="phone"
                       oninput="setCustomValidity('')"
                       oninvalid="this.setCustomValidity('please enter a valid phone')"
                       placeholder="phone"
                       required
                       type="text">
                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
            </div>
            <hr>

            <div class="form-group has-feedback">
                <input class="form-control "
                       id="username"
                       name="username"
                       oninput="setCustomValidity('')"
                       oninvalid="this.setCustomValidity('please enter a valid username')"
                       placeholder="user name"
                       required
                       type="text">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input class="form-control"
                       id="email"
                       name="email"
                       oninput="setCustomValidity('')"
                       oninvalid="this.setCustomValidity('please enter a valid email')"
                       placeholder="email"
                       required
                       type="email">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>


            <div class="form-group has-feedback">
                <input class="form-control "
                       id="password"
                       name="password"
                       oninput="setCustomValidity('')"
                       oninvalid="this.setCustomValidity('please enter a valid password')"
                       placeholder="password"
                       required
                       type="password">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input class="form-control "
                       id="confirm_password"
                       name="confirm_password"
                       oninput="setCustomValidity('')"
                       oninvalid="this.setCustomValidity('please renter comfirm password')"
                       placeholder=" confirm password"
                       required
                       type="password">
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                <span id='message'></span>

            </div>
            <div class="row">
                <!-- /.col -->
                <div class="col-xs-4">
                    <button class="btn btn-primary btn-block btn-flat"
                            id="submitBtn"
                            type="submit">
                        register
                    </button>
                </div>
                <!-- /.col -->
            </div>
        </form>
        <hr>

        <a class="text-center" href="/day3-lab1/login">i have an account </a>
    </div>
    <!-- /.form-box -->
</div>
<script>
    function showData(){
    firstName =document.getElementById("firstName").value;
    lastName =document.getElementById("lastName").value;
    phone =document.getElementById("phone").value;
    email =document.getElementById("email").value;
    var myWindow = window.open("", "data view", "width=200,height=100");
    myWindow.document.write(
        "<p>"+
            firstName +
        "</p>"+
        "<p>"
        +lastName
        +"</p>"
        +"<p>"
        +phone
        +"</p>"
        +"<p>"
        +email
        +"</p>");
    }
</script>
</body>
</html>