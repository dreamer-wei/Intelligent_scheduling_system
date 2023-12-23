<%@ page import="java.util.ArrayList" %>
<%@ page import="com.qcby.model.Employee" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Schedule</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        td:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<h2>排班表结果</h2>

<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>Time</th>--%>
<%--        <th>Employees</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <tr th:each="time : ${timeList}">--%>
<%--        <td th:text="${time}"></td>--%>
<%--        <td>--%>
<%--            <ul>--%>
<%--                <li th:each="employee : ${saMap[time]}" th:text="${employee.name}"></li>--%>
<%--            </ul>--%>
<%--        </td>--%>
<%--    </tr>--%>
    <table class="schedule-table">
        <tr>
            <th>周一</th>
            <th>周二</th>
            <th>周三</th>
            <th>周四</th>
            <th>周五</th>
            <th>周六</th>
            <th>周日</th>
        </tr>
        <c:forEach items="${timeList}" var="time">
            <tr>
                <c:forEach items="${saMaps}" var="dayMap">
                    <c:set var="employees" value="${dayMap[time]}" />
                    <c:forEach items="${employees}" var="employee">
                        <td>
                                ${employee.getEmployeeName()}
                                ${ time }
                        </td>
                    </c:forEach>
                </c:forEach>
            </tr>
        </c:forEach>

    </table>
<%--    </tbody>--%>
<%--</table>--%>
</body>
</html>


