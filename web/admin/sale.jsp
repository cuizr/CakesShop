<%--
  Created by IntelliJ IDEA.
  User: cuizr
  Date: 2020/07/15
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>销量统计</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/echarts.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<jsp:include page="/admin/header.jsp"></jsp:include>
<div  id="main" style="width: 1000px;height: 350px;margin:0px auto;display: block">
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '第一个 ECharts 实例'
        },
        tooltip: {},
        legend: {
            data:['销量']
        },
        xAxis: {
            data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
        },
        yAxis: {},
        series: [{
            name: '销量',
            type: 'bar',
            data: [5, 20, 36, 10, 10, 20]
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</div>
</body>
</html>
