<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员页面</title>
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

        #adminInfo {
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

        form {
            display: flex;
            flex-direction: column;
            margin-top: 10px;
        }

        label {
            margin-bottom: 5px;
        }

        input, select {
            margin-bottom: 10px;
            padding: 5px;
        }

        button {
            background-color: #333;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
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
</head>
<body>

<header>
    <h1>管理员页面</h1>
</header>

<!-- 管理员信息 -->
<div id="adminInfo">
    <p>管理员ID: ${sessionScope.user.userID}</p>
    <p>管理员姓名: ${sessionScope.user.userName}</p>
</div>


<!-- 面包屑导航 -->
<div class="breadcrumb">
    当前位置：
    <a href="/Intelligent_scheduling_system/index">首页</a> &gt;
    <a href="/Intelligent_scheduling_system/login/submit">登录</a> &gt;
    管理员页面
</div>

<!-- 导航条 -->
<div class="breadcrumb">
    <a href="#" onclick="showModule('storeManagementModule')">门店信息管理</a> |
    <a href="#" onclick="showModule('employeeModule')">员工信息管理</a> |
    <a href="#" onclick="showModule('scheduleModule')">排班管理</a> |
    <a href="#" onclick="showModule('queryModule')">查询工作时间</a>
</div>
${msg}
<!-- 主要内容 -->
<div id="mainContent">
    <!-- 门店信息管理模块 -->
    <div class="module" id="storeManagementModule">
        <h2>门店信息管理</h2>
        <!-- 门店信息导入内容 -->
        <div class="submodule">
            <a href="#" onclick="showModule2('importModule')">门店信息导入</a>
        </div>
        <!-- 门店信息修改内容 -->
        <div class="submodule">
            <a href="#" onclick="showModule2('modifyModule')">门店信息修改</a>
        </div>
        <!-- 统计门店职工人数内容 -->
        <div class="submodule">
            <a href="#" onclick="showModule2('statisticsModule')">统计门店职工人数</a>
        </div>

        <!-- 门店信息导入模块 -->
        <div class="module2" id="importModule">
            <h3>门店信息导入</h3>
            <!-- 门店信息录入内容 -->
            <form:form modelAttribute="store" method="post" id="importForm" action="${pageContext.request.contextPath}/store/insert">
                <!-- 添加门店信息的表单 -->
                <label for="importStoreName">门店名称：</label>
                <form:input type="text" id="importStoreName" name="importStoreName" path="storeName"/>
                <label for="importStoreLocation">门店位置：</label>
                <form:input type="text" id="importStoreLocation" name="importStoreLocation" path="storeAddress"/>
                <label for="importStoreSize">工作面积大小：</label>
                <form:input type="text" id="importStoreSize" name="importStoreSize" path="storeSize"/>
                <form:button type="submit">导入</form:button>
            </form:form>
        </div>

        <!-- 门店信息修改模块 -->
        <div class="module2" id="modifyModule">
            <h3>门店信息修改</h3>
            <!-- 门店信息修改内容 -->
            <form id="modifyForm">
                <!-- 添加门店信息的表单 -->
                <label for="modifyStoreName">门店名称：</label>
                <input type="text" id="modifyStoreName" name="modifyStoreName" required>
                <label for="modifyStoreLocation">门店位置：</label>
                <input type="text" id="modifyStoreLocation" name="modifyStoreLocation" required>
                <label for="modifyStoreSize">工作面积大小：</label>
                <input type="text" id="modifyStoreSize" name="modifyStoreSize" required>
                <button type="button" onclick="modifyStore()">修改</button>
            </form>
        </div>

        <!-- 统计门店职工人数模块 -->
        <div class="module2" id="statisticsModule">
            <h3>统计门店职工人数</h3>
            <!-- 统计门店职工人数内容 -->
            <!-- 这里可以添加相应的表格来显示统计结果 -->
        </div>
    </div>


    <!-- 员工信息管理模块 -->
    <div class="module" id="employeeModule">
        <h2>员工信息管理</h2>
        <!-- 员工信息注册 -->
        <div class="submodule">
            <a href="#" onclick="showModule2('importModule2')">新员工信息注册</a>
        </div>
        <!-- 员工偏好设置 -->
        <div class="submodule">
            <a href="#" onclick="showModule2('modifyModule2')">员工偏好修改</a>
        </div>

        <!-- 员工信息导入模块 -->
        <div class="module2" id="importModule2">
            <h3>新员工信息导入</h3>
            <!-- 录入基本信息、审批员工偏好修改和统计门店员工人数内容 -->
            <form>
                <!-- 添加员工信息的表单 -->
                <label for="employeeName">员工姓名：</label>
                <input type="text" id="employeeName" name="employeeName" required>
                <label for="employeeName">员工邮箱：</label>
                <input type="email" id="employeeEmail" name="employeeEmail" required>
                <label for="employeeRole">员工职位：</label>
                <select id="employeeRole" name="employeeRole">
                    <option value="manager">经理</option>
                    <option value="Deputy-manager">副经理</option>
                    <option value="Group-leader">组长</option>
                    <option value="Cashier">收银</option>
                    <option value="Sales">导购</option>
                    <option value="Warehouse-staff">库房</option>
                </select>
                <button type="submit">提交</button>
            </form>
        </div>
    </div>

    <!-- 排班管理模块 -->
    <div class="module" id="scheduleModule">
        <h2>排班管理</h2>
        <!-- 排班规则管理内容 -->
        <div class="submodule">
            <a href="#" onclick="showModule2('scheduleRuleManagementModule')">排班规则管理</a>
        </div>
        <!-- 排班管理内容 -->
        <div class="submodule">
            <a href="#" onclick="showModule2('scheduleManagementModule')">排班管理</a>
        </div>
    </div>

    <!-- 排班规则管理模块 -->
    <div class="module2" id="scheduleRuleManagementModule">
        <h3>排班规则管理</h3>
        <!-- 排班规则导入内容 -->
        <form id="importScheduleRuleForm">
            <label>请输入要导入的规则信息：</label>
            <label>规则ID：</label>
            <input type="text" id="importRuleID" name="importRuleName" required>
            <label>规则类型（1为开店规则，2为关店规则，3为运营规则）：</label>
            <input type="text" id="importRuleType" name="importRuleType" required>
            <label>规则参数（用于计算需要人数，门店面积 / 参数 = 运营所需人数）：</label>
            <input type="text" id="importRuleDivisor" name="importRuleDivisor" required>
            <label>规则对应的值（以小时为单位计，如1代表提前1小时开店）：</label>
            <input type="text" id="importRuleTypeValue" name="importRuleTypeValue" required>
            <!-- 添加其他排班规则导入表单字段 -->
            <button type="button" onclick="importScheduleRule()">导入</button>
        </form>
        <!-- 排班规则修改内容 -->
        <form id="modifyScheduleRuleForm">
            <label>请输入要修改的规则信息：</label>
            <label>规则ID：</label>
            <input type="text" id="modifyRuleID" name="modifyRuleID" required>
            <label>规则类型（1为开店规则，2为关店规则，3为运营规则）：</label>
            <input type="text" id="modifyRuleType" name="modifyRuleType" required>
            <label>规则参数（用于计算需要人数，门店面积 / 参数 = 运营所需人数）：</label>
            <input type="text" id="modifyRuleDivisor" name="modifyRuleDivisor" required>
            <label>规则对应的值（以小时为单位计，如1代表提前1小时开店）：</label>
            <input type="text" id="modifyRuleTypeValue" name="modifyRuleTypeValue" required>
            <!-- 添加其他排班规则修改表单字段 -->
            <button type="button" onclick="modifyScheduleRule()">修改</button>
        </form>
        <!-- 排班规则删除内容 -->
        <form id="deleteScheduleRuleForm">
            <label>请输入要删除掉规则信息：</label>
            <label>规则ID：</label>
            <input type="text" id="deleteRuleID" name="deleteRuleID" required>
            <!-- 添加其他排班规则删除表单字段 -->
            <button type="button" onclick="deleteScheduleRule()">删除</button>
        </form>
        <!-- 排班规则查看内容 -->
        <!-- 这里可以添加相应的表格来显示排班规则 -->
    </div>

    <!-- 排班管理模块 -->
    <div class="module2" id="scheduleManagementModule">
        <h3>排班管理</h3>
        <!-- 排班规则选取内容 -->
        <form id="selectScheduleRuleForm1">
            <label>开店规则：</label>
            <select id="selectRole1" name="selectRole1">

            </select>
            <!-- 添加其他排班规则选取表单字段 -->
            <button type="button" onclick="selectScheduleRule()">选取</button>
        </form>

        <form id="selectScheduleRuleForm2">
            <label>关店规则：</label>
            <select id="selectRole2" name="selectRole2">

            </select>
            <!-- 添加其他排班规则选取表单字段 -->
            <button type="button" onclick="selectScheduleRule()">选取</button>
        </form>

        <form id="selectScheduleRuleForm3">
            <label>运营规则：</label>
            <select id="selectRole3" name="selectRole3">

            </select>
            <!-- 添加其他排班规则选取表单字段 -->
            <button type="button" onclick="selectScheduleRule()">选取</button>
        </form>

        <!-- 排班模式选取内容 -->
        <form id="selectScheduleModeForm">
            <label for="selectMode">排班模式：</label>
            <select id="selectMode" name="selectMode">
                <option value="week">按周</option>
                <option value="day">按日</option>
            </select>
            <!-- 添加其他排班模式选取表单字段 -->
            <button type="button" onclick="selectScheduleMode()">选取</button>
        </form>
    </div>


    <!-- 查询工作时间模块 -->
    <div class="module" id="queryModule">
        <h2>查询工作时间</h2>
        <!-- 月、周、日三个子模块 -->
        <div class="submodule">
            <a href="#">按月查询</a>
            <a href="#">按周查询</a>
            <a href="#">按日查询</a>
        </div>
        <!-- 添加具体内容和表单等 -->
        <!-- 这里可以添加相应的表格来显示工作时间 -->
    </div>
</div>

<footer>
    &copy; 2023 管理员页面
</footer>

</body>
</html>
