<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 08.11.2020
  Time: 1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<%
    InetAddress iaLocalAddress = null;
    iaLocalAddress = InetAddress.getLocalHost();
%>
<html>
<head>
    <title>PingPong_V1</title>
</head>
<body>


<table border = "1" align = "center">
    <center><h2>PingPong_V1</h2></center>
    <tr bgcolor = "#949494">
        <th>Server IP</th>
        <th>Server Hostname</th>
    </tr>
    <tr>
        <th><%out.println(iaLocalAddress);%></th>
        <th><%out.println("****");%></th>
    </tr>
</table>


<center>
    <h3>Auto Refresh 1 sec</h3>
    <%
        // Set refresh, autoload time as 1 seconds
        response.setIntHeader("Refresh", 1);
        // Get current time
        Calendar calendar = new GregorianCalendar();
        String am_pm;
        int hour = calendar.get(Calendar.HOUR);
        int minute = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);
        if(calendar.get(Calendar.AM_PM) == 0)
            am_pm = "AM";
        else
            am_pm = "PM";
        String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
        out.println("Crrent Time: " + CT + "\n");
    %>
</center>

</body>
</html>

