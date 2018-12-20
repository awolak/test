<%@page import="ug.awolak.javaee.kolokwium12.domain.Newsletter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wszystkie newslettery</title>
</head>
<body>

<jsp:useBean id="storage" class="ug.awolak.javaee.kolokwium12.service.NewsletterService" scope="application" />
<%
  for (Newsletter newsletter : storage.getAllNewsletters()) {
	  out.println("<p>Imie: " + newsletter.getName() + "; Od: " + newsletter.getFrom() + "; Do: " + newsletter.getTo() + "; Czestotliwosc: " + newsletter.getFrequency() + "; Tematy: " + newsletter.getSubjects() +"</p>");
  }
%>
<p>
  <a href="Newsletter.jsp">Zapisz sie do kolejnego newslettera</a>
</p>

</body>
</html>