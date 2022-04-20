
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="update" class="was-validated" method="get">
    <div class="form-group">
        <label for="uname">Username:</label>
        <input type="text" class="form-control" id="uname" name="hoTen" required>

    </div>
    <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="password" class="form-control" id="pwd" name="password" required>
    </div>

    <div class="form-group">
        <label for="email">Email:</label>
        <input type="text" class="form-control" id="email" name="email" required>
    </div>

    <div class="form-group">
        <label for="dc">Địa Chỉ:</label>
        <input type="text" class="form-control" id="dc"  name="diaChi" required>
    </div>

    <div class="form-group">
        <label for="sdt">SĐT:</label>
        <input type="text" class="form-control" id="sdt"  name="sdt" required>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>
