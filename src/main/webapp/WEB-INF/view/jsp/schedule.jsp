<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>排班表生成</title>
    <style type="text/css">
        .schedulepage{margin: 10px 5px;}
        .scheduletable{font-size: 1.4em;width: 100%;border-collapse: collapse;
            /* 合并边框 */border: 1px solid #eee8e1;margin: 10px 0px;}
        .scheduletable tr,.scheduletable th, .scheduletable td{border: 2px solid #eee8e1;/*单元格边框*/}
        .scheduletable td{text-align: center}
    </style>
</head>
<body>
    <section class="schedulepage">
        <form action = "ScheduleSelete" method = "post">
            <table>
                <tr>
                    <label>
                        <select name="way" size="1" id="way">
                            <option value="1">adidas门店排班表</option>
                            <option value="2">nike门店排班表</option>
                            <option value="3">lining门店排班表</option>
                        </select>
                    </label>
                </tr>
                <tr>
                    <button type="submit">按日查看</button>
                    <button type="submit">按周查看</button>
                </tr>
            </table>
        </form>
        <table class="scheduletable">
            <tr>
                <th>周一${map.date.monday}</th>
                <th>周二</th>
                <th>周三</th>
                <th>周四</th>
                <th>周五</th>
                <th>周六</th>
                <th>周七</th>
            </tr>
            <tr>
                <td>1${map.date.time}</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
                <td>7</td>
            </tr>
            ${result}
        </table>
    </section>
</body>
</html>
