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
    <center><h2>PingPong_V2</h2></center>
    <tr bgcolor = "#949494">
        <th>Server IP</th>
        <th>Server Hostname</th>
    </tr>
    <tr>
        <th><%out.println(iaLocalAddress);%></th>
        <th><%out.println("****");%></th>
    </tr>
</table>

<p>httpParam :
    <%
        String txt = "";
        if("ping".equals(request.getParameter("param"))) {
            txt = "**** PONG!!! ****";
        }
        out.println (txt);
    %>
</p>

</body>
</html>

