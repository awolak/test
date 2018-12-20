<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ankiety</title>
</head>
<body>

<jsp:useBean id="storage" class="ug.awolak.javaee.kolokwium12.service.NewsletterService" scope="application" />
<jsp:useBean id="newsletter" class="ug.awolak.javaee.kolokwium12.domain.Newsletter" scope="session" />

<form action="AddNewsletter.jsp">

  Imie: <input type="text" name="name" value="${newsletter.name}" /><br /><br/>
  Czestotliwosc korzystania <br/> Od: <input type="text"  name="from" value="${newsletter.from}" /> Do: <input type="text"  name="to" value="${newsletter.to}" /><br/><br/>
  Jak czesto?<br/>
    <input type="radio" name="frequency" value="raz w tygodniu">Raz w tygodniu<br>
    <input type="radio" name="frequency" value="codziennie">Codziennie<br>
    <input type="radio" name="frequency" value="kilka razy dziennie">Kilka razy dziennie<br><br/>
   Tematy do wyboru:<br/> 
   <input type="checkbox" name="subjects" value="nowe modele">Nowe modele<br>
   <input type="checkbox" name="subjects" value="promocje">Promocje<br>
   <input type="checkbox" name="subjects" value="akcesoria">Akcesoria<br><br>
  
  <input type="submit" value="Zapisz sie!">
 
  
</form>
<p>
  <a href="AllNewsletters.jsp">Wszystkie newslettery</a>
</p>
</body>
</html>