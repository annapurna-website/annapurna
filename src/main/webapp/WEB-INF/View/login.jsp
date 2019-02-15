<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
 <body class="text-center">
        <div layout:fragment="content">
            <form class="form-signin" action="/login" method="post">
                <h1>Please sign in</h1>
                <div th:if="${param.error}">
                    Invalid email and password.
                </div>
                <div th:if="${param.logout}">
                    You have been logged out.
                </div>
                <label for="inputUserName" class="sr-only">User Name</label>
                <input type="text" name="userName" id="inputUserName" placeholder="User Name" required="" />
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" name="password" id="inputPassword" placeholder="Password" required="" />
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>
            <form class="form-signin" action="/signup">
                <button class="btn btn-md btn-success btn-block" type="Submit">Signup Here</button>
            </form>
        </div>
</body>
</html>