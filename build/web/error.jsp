<%-- 
    Document   : error
    Created on : Jan 6, 2016, 2:11:13 PM
    Author     : bulivaa
--%>

<%@page contentType="text/plain" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" import="java.io.*"%>

Message:
<%=exception.getMessage()%>

Stack Trace:
<%
    StringWriter stringWriter = new StringWriter();
    PrintWriter printWriter = new PrintWriter(stringWriter);
    exception.printStackTrace(printWriter);
    out.println(stringWriter);//.toString().replaceAll("at", "<br />at"));
    printWriter.close();
    stringWriter.close();
%>