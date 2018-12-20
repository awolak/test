<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Newsletter</title>
</head>
<body>
<jsp:useBean id="newsletter" class="ug.awolak.javaee.kolokwium12.domain.Newsletter" scope="session" />

<jsp:setProperty name="newsletter" property="*" /> 

<jsp:useBean id="storage" class="ug.awolak.javaee.kolokwium12.service.NewsletterService" scope="application" />

<% 
  storage.addNewsletter(newsletter);
%>

<p>Zapisales sie do newslettera </p>
<p>Imie: ${newsletter.name} </p>
<p>Od: ${newsletter.from} </p>
<p>Do: ${newsletter.to }</p>
<p>Czestotliwosc: ${newsletter.frequency }</p>
<p>Tematy: ${newsletter.subjects }</p>

<p>
  <a href="AllNewsletters.jsp">Lista newsletterow</a>
</p>
<p>
  <a href="Newsletter.jsp">Dodaj newsletter</a>
</p>

</body>
</html>