<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>阿迪达斯运动鞋销售店</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1em;
        }

        nav {
            background-color: #666;
            color: white;
            padding: 1em;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav li {
            display: inline;
            margin-right: 20px;
        }

        #breadcrumbs {
            margin: 10px 0;
            background-color: #f0f0f0;
            padding: 10px;
        }

        #storeInfo {
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #login {
            position: absolute;
            top: 10px;
            right: 10px;
            padding: 10px;
            background-color: #333;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1em;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <h1>阿迪达斯运动鞋销售店</h1>
</header>

<!-- 导航栏 -->
<nav>
    <ul>
        <li><a href="index">首页</a></li>
        <li>&gt;</li>
        <li>门店信息</li>
        <li>&gt;</li>
        <li>阿迪达斯运动鞋销售店</li>
    </ul>
</nav>

<!-- 门店信息 -->
<div id="storeInfo">
    <h2>门店信息</h2>
    <p><strong>序号:</strong> 001</p>
    <p><strong>名称:</strong> 阿迪达斯运动鞋销售店</p>
    <p><strong>地址:</strong> 123 Main Street, City</p>
    <p><strong>面积:</strong> 200 平方米</p>
</div>

<!-- 登录功能 -->
<div id="login">
    <a href="login/submit">登录</a>
</div>

<footer>
    &copy; 2023 门店信息页面
</footer>

</body>
</html>
