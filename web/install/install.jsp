<%-- 
    Document   : install
    Created on : Jan 6, 2016, 1:46:29 PM
    Author     : bulivaa
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.lang.String"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@ page errorPage="../error/error.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%

            InputStream configuration
                    = getServletConfig()
                    .getServletContext()
                    .getResourceAsStream("/WEB-INF/default.properties");

            Properties defaultProps = new Properties();
            defaultProps.load(configuration);
            configuration.close();

            out.println(defaultProps.get("database"));
            out.println(defaultProps.get("dbhost"));

            File file = new File("smssync.properties");
            if (!file.exists())
            {
                out.print("Welcome. Let us install this application together");
                out.print("<form method=post action='install.html'>");
                out.print("<input type='submit' value='Begin Installation'>");
                out.print("</form>");
            }
            else
            {
                out.print("Looks like smssync is installed. Check configuration file at " + file.getCanonicalPath());
                out.print(" or click here to delete the configuration file and install smssync again.");
            }

        %>

    </body>
</html>
