<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

        .module2 {
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
<a href="/Intelligent_scheduling_system/Schedule/arrangeEmployee">点击此处查看排班表</a>
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
            <form:form modelAttribute="store" method="post" id="importForm"
                       action="${pageContext.request.contextPath}/store/insert">
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
            <form:form modelAttribute="store" method="post" id="modifyForm"
                       action="${pageContext.request.contextPath}/store/update">
                <!-- 添加门店信息的表单 -->
                <label for="modifyStoreName">门店编号：</label>
                <form:input type="text" id="modifyStoreID" name="modifyStoreID" path="storeID"/>
                <label for="modifyStoreName">门店名称：</label>
                <form:input type="text" id="modifyStoreName" name="modifyStoreName" path="storeName"/>
                <label for="modifyStoreLocation">门店位置：</label>
                <form:input type="text" id="modifyStoreLocation" name="modifyStoreLocation" path="storeAddress"/>
                <label for="modifyStoreSize">工作面积大小：</label>
                <form:input type="text" id="modifyStoreSize" name="modifyStoreSize" path="storeSize"/>
                <form:button type="submit">修改</form:button>
            </form:form>
        </div>

        <!-- 统计门店职工人数模块 -->
        <div class="module2" id="statisticsModule">
            <h3>统计门店职工人数</h3>
            <!-- 统计门店职工人数内容 -->
            <!-- 这里可以添加相应的表格来显示统计结果 -->
            <table>
                <thead>
                <tr>
                    <th>门店名称</th>
                    <th>职工人数</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${EmployeeNum}" var="EmployeeNum">
                    <tr>
                        <td>${EmployeeNum.StoreID}</td>
                        <td>${EmployeeNum.EmployeeNum}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
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
            <form:form modelAttribute="employee" method="post"
                       action="${pageContext.request.contextPath}/employee/insert">
                <!-- 添加员工信息的表单 -->
                <label for="employeeName">员工姓名：</label>
                <form:input type="text" id="employeeName" name="employeeName" path="employeeName"/>
                <label for="employeeName">员工邮箱：</label>
                <form:input type="email" id="employeeEmail" name="employeeEmail" path="employeeEmail"/>
                <label for="employeeRole">员工职位：</label>
                <form:select id="employeeRole" name="employeeRole" path="employeePosition">
                    <form:option value="manager">经理</form:option>
                    <form:option value="Deputy-manager">副经理</form:option>
                    <form:option value="Group-leader">组长</form:option>
                    <form:option value="Cashier">收银</form:option>
                    <form:option value="Sales">导购</form:option>
                    <form:option value="Warehouse-staff">库房</form:option>
                </form:select>
                <form:button type="submit">提交</form:button>
            </form:form>
        </div>

        <div class="module2" id="modifyModule2">
            <h3>员工偏好修改</h3>
            <!-- 员工偏好修改内容 -->
            <form:form modelAttribute="employeePreference" method="post"
                       action="${pageContext.request.contextPath}/employee/updatePreference">
                <!-- 修改员工偏好的表单 -->
                <label for="employeeID">员工编号：</label>
                <form:input type="text" id="employeeID" name="employeeID" path="employeeID"/>
                <label for="preferDay">偏好工作日：</label>
                <form:select id="preferDay" name="preferDay" path="preferDay">
                    <form:option value="1">周一</form:option>
                    <form:option value="2">周二</form:option>
                    <form:option value="3">周三</form:option>
                    <form:option value="4">周四</form:option>
                    <form:option value="5">周五</form:option>
                    <form:option value="6">周六</form:option>
                    <form:option value="7">周日</form:option>
                </form:select>
                <label for="preferTime">偏好工作时间：</label>
                <form:select id="preferTime" name="preferTime" path="preferTime">
                    <form:option value="8">8:00</form:option>
                    <form:option value="9">9:00</form:option>
                    <form:option value="10">10:00</form:option>
                    <form:option value="11">11:00</form:option>
                    <form:option value="12">12:00</form:option>
                    <form:option value="13">13:00</form:option>
                    <form:option value="14">14:00</form:option>
                    <form:option value="15">15:00</form:option>
                    <form:option value="16">16:00</form:option>
                    <form:option value="17">17:00</form:option>
                </form:select>
                <form:button type="submit">提交</form:button>
            </form:form>
        </div>
    </div>

    <!-- 排班管理模块 -->
    <%--    <div class="module" id="scheduleModule">--%>
    <%--        <h2>排班管理</h2>--%>
    <%--        <!-- 排班规则管理内容 -->--%>
    <%--        <div class="submodule">--%>
    <%--            <a href="#" onclick="showModule2('scheduleRuleManagementModule')">排班规则管理</a>--%>
    <%--        </div>--%>
    <%--        <!-- 排班管理内容 -->--%>
    <%--        <div class="submodule">--%>
    <%--            <a href="#" onclick="showModule2('scheduleManagementModule')">排班管理</a>--%>
    <%--        </div>--%>
    <%--    </div>--%>
    <!-- 排班管理模块 -->
    <div class="module" id="scheduleModule">
        <h2>排班管理</h2>
        <!-- 自定义排班规则管理内容 -->
        <div class="submodule">
            <a href="#" onclick="showModule2('scheduleRuleManagementModule')">自定义排班规则管理</a>
        </div>
        <!-- 排班表生成内容 -->
        <div class="submodule">
            <a href="#" onclick="showModule2('scheduleRegularModule')">排班表生成</a>
        </div>
        <!-- 排班规则管理模块 -->
        <div class="module2" id="scheduleRuleManagementModule">
            <h3>排班规则管理</h3>
            <!-- 排班规则导入内容 -->
            <form:form modelAttribute="classRule" method="post" id="importScheduleRuleForm"
                       action="${pageContext.request.contextPath}/classRule/insert">
                <label>请输入要导入的规则信息：</label>
                <label>规则ID：</label>
                <form:input type="text" id="importRuleID" name="importRuleID" path="ruleID"/>
                <label>规则类型（1为开店规则，2为关店规则，3为运营规则）：</label>
                <form:select id="importRuleType" name="importRuleType" path="ruleType">
                    <form:option value="1">开店规则</form:option>
                    <form:option value="2">关店规则</form:option>
                    <form:option value="3">运营规则</form:option>
                </form:select>
                <label>规则参数（用于计算需要人数，门店面积 / 参数 = 运营所需人数）：</label>
                <form:input type="text" id="importRuleDivisor" name="importRuleDivisor" path="divisor"/>
                <label>规则对应的值（以小时为单位计，如1代表提前1小时开店）：</label>
                <form:input type="text" id="importRuleTypeValue" name="importRuleTypeValue" path="ruleTypeValue"/>
                <!-- 添加其他排班规则导入表单字段 -->
                <form:button type="submit">导入</form:button>
            </form:form>
            <!-- 排班规则修改内容 -->
            <form:form modelAttribute="classRule" method="post" id="modifyScheduleRuleForm"
                       action="${pageContext.request.contextPath}/classRule/update">
                <label>请输入要修改的规则信息：</label>
                <label>规则ID：</label>
                <form:input type="text" id="modifyRuleID" name="modifyRuleID" path="ruleID"/>
                <label>规则类型（1为开店规则，2为关店规则，3为运营规则）：</label>
                <form:select id="modifyRuleType" name="modifyRuleType" path="ruleType">
                    <form:option value="1">开店规则</form:option>
                    <form:option value="2">关店规则</form:option>
                    <form:option value="3">运营规则</form:option>
                </form:select>
                <label>规则参数（用于计算需要人数，门店面积 / 参数 = 运营所需人数）：</label>
                <form:input type="text" id="modifyRuleDivisor" name="modifyRuleDivisor" path="divisor"/>
                <label>规则对应的值（以小时为单位计，如1代表提前1小时开店）：</label>
                <form:input type="text" id="modifyRuleTypeValue" name="modifyRuleTypeValue" path="ruleTypeValue"/>
                <!-- 添加其他排班规则修改表单字段 -->
                <form:button type="submit">修改</form:button>
            </form:form>
            <!-- 排班规则删除内容 -->
            <form:form modelAttribute="classRule" method="post" id="deleteScheduleRuleForm"
                       action="${pageContext.request.contextPath}/classRule/delete">
                <label>请输入要删除掉规则信息：</label>
                <label>规则ID：</label>
                <form:select id="deleteRuleID" name="deleteRuleID" path="ruleID">
                    <c:forEach items="${RuleQuery}" var="RuleQuery">
                        <form:option value="${RuleQuery.ruleID}">${RuleQuery.ruleID}</form:option>
                    </c:forEach>
                </form:select>
                <!-- 添加其他排班规则删除表单字段 -->
                <form:button type="sumit">删除</form:button>
            </form:form>
            <!-- 排班规则查看内容 -->
            <!-- 这里可以添加相应的表格来显示排班规则 -->
        </div>

        <!-- 排班表生成模块 -->
        <div class="module2" id="scheduleRegularModule">
            <h3>排班表生成</h3>
            <!-- 排班模式选取内容 -->
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
        <!-- 排班表 -->
        <%--        <div class="submodule" id="scheduleShowModule">--%>
        <%--            <iframe style="width: 100%; height: 2500px; border: 0px;"--%>
        <%--                    src="/Intelligent_scheduling_system/schedule"></iframe>--%>
        <%--        </div>--%>
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
