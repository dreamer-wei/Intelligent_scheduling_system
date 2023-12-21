<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>员工页面</title>
    <script>
        // JavaScript函数，用于切换显示/隐藏模块
        function showModule(moduleId) {
            // 先隐藏所有模块
            var modules = document.getElementsByClassName("module");

            for (var i = 0; i < modules.length; i++) {
                modules[i].style.display = "none";
            }

            // 显示点击的模块
            var moduleToShow = document.getElementById(moduleId);
            moduleToShow.style.display = "block";
        }

        function showModule2(moduleId) {
            // 先隐藏所有模块
            var modules = document.getElementsByClassName("module2");

            for (var i = 0; i < modules.length; i++) {
                modules[i].style.display = "none";
            }

            // 显示点击的模块
            var moduleToShow = document.getElementById(moduleId);
            moduleToShow.style.display = "block";
        }
    </script>
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
            padding: 2em;
        }

        #employeeInfo {
            position: absolute;
            top: 10px;
            right: 10px;
            padding: 10px;
            background-color: #333;
            color: white;
            border-radius: 5px;
        }

        #mainContent {
            margin: 20px;
            overflow: auto;
            padding-bottom: 50px;
        }

        .breadcrumb {
            margin-bottom: 20px;
        }

        .breadcrumb a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }

        .breadcrumb a:hover {
            text-decoration: underline;
        }

        .module {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: none; /* 默认隐藏所有模块 */
        }

        .module2{
            display: none; /* 默认隐藏所有模块 */
        }

        .submodule {

        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1em;
            position: relative;
            margin-top: -50px;
            clear: both;
        }
    </style>
</head>
<body>

<header>
    <h1>员工页面</h1>
</header>

<!-- 员工信息 -->
<div id="employeeInfo">
    <p>员工ID: ${sessionScope.user.userID}</p>
    <p>员工姓名: ${sessionScope.user.userName}</p>
</div>

<!-- 面包屑导航 -->
<div class="breadcrumb">
    当前位置：
    <a href="/Intelligent_scheduling_system/index">首页</a> &gt;
    <a href="/Intelligent_scheduling_system/login/submit">登录</a> &gt;
    普通员工页面
</div>

<!-- 导航条 -->
<div class="breadcrumb">
    <a href="#" onclick="showModule('accountUpdate')">账号信息管理</a> |
    <a href="#" onclick="showModule('workTime')">工作时间查询</a> |
</div>

<!-- 主要内容 -->
<div id="mainContent">

    <div class="module" id="accountUpdate">
        <h2>账户管理</h2>
        <!-- 添加具体内容和表单等 -->
        <div class="submodule">
            <a href="#" onclick="showModule('importModule')">修改我的密码</a>
        </div>
        <div class="submodule">
            <a href="#" onclick="showModule2('importModule')">提交偏好修改申请</a>
        </div>

        <div class="module2" id="updatePassword">

        </div>
        <div class="module2"  id="submitPreference">

        </div>

    </div>

    <!-- 查询工作时间模块 -->
    <div class="module" id="workTime">
        <h2>查询我的工作时间</h2>
        <!-- 月、周、日三个子模块 -->
        <div class="submodule">
            <a href="#">按月查询</a>
            <a href="#">按周查询</a>
            <a href="#">按日查询</a>
        </div>
        <!-- 添加具体内容和表单等 -->
    </div>
</div>

<footer>
    &copy; 2023 员工页面
</footer>

</body>
</html>
