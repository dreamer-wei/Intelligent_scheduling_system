<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>门店信息</title>
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

        #breadcrumbs a {
            text-decoration: none;
            color: #333;
        }

        #breadcrumbs a:hover {
            text-decoration: underline;
        }

        #storeInfo {
            margin: 20px;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        #storeInfo h2 a {
            color: #333;
            text-decoration: none;
            margin-bottom: 10px;
        }

        #storeInfo h2 a:hover {
            text-decoration: underline;
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
    <h1>门店信息</h1>
</header>

<!-- 导航栏 -->
<nav>
    <ul>
        <li><a href="/Intelligent_scheduling_system/login/submit">登录</a></li>
<%--        <li>&gt;</li>--%>
        <li>门店信息</li>
    </ul>
</nav>

<!-- 面包屑导航 -->
<div id="breadcrumbs">
    当前位置：
    <a href="index">首页</a> &gt;
    门店信息
</div>

<!-- 门店品牌信息的简介 -->
<div id="storeInfo">
    <h2><a href="storeAdidas">阿迪达斯运动鞋销售店</a></h2>
    <p>阿迪达斯（adidas）是一家德国运动品牌，提供各种运动鞋、服装和配件。</p>

    <h2><a href="storeNike">耐克运动鞋销售店</a></h2>
    <p>耐克（Nike）是一家美国运动品牌，以其创新的运动鞋、运动服和装备而闻名。</p>

    <h2><a href="storeLiNing">李宁运动鞋销售店</a></h2>
    <p>李宁（Li-Ning）是一家中国运动品牌，提供各类运动鞋和运动装备。</p>

    <img src="./img/index.webp"/>
</div>

<footer>
    &copy; 2023 门店信息页面
</footer>

</body>
</html>
