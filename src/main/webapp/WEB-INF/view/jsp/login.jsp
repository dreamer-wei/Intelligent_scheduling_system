<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户登录页面</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 20px;
            background-color: #f2f2f2;
        }

        .login-container {
            padding: 20px;
            position: absolute;
            top: 50%;
            left: 50%;
            border-radius: 5px;
            transform: translate(-50%, -50%);
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-table {
            width: 100%;
            margin-top: 20px;
        }

        .form-table td {
            padding: 10px;
            text-align: left;
        }

        .form-table input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .form-table select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .form-table button {
            background-color: #3498db;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="login-container">
    <form:form modelAttribute="user" method="post" action="${pageContext.request.contextPath}/login/handle">
        <table class="form-table">
            <tr>
                <td>
                    <label>
                        员工类型:
                        <form:select path="userType" name="op">
                            <option value="1">普通员工</option>
                            <option value="2">排班管理员</option>
                        </form:select>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>请输入用户名:</label>
                    <form:input path="UserID" id="UserID" name="UserID"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>请输入密码:</label>
                    <form:input path="UserPassword" id="UserPassword" name="UserPassword" type="password"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:button type="submit">登录</form:button>
                </td>
                    <%--                <td>--%>
                    <%--                    <a href="/Intelligent_scheduling_system/EInfo/register">注册</a>--%>
                    <%--                </td>--%>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>