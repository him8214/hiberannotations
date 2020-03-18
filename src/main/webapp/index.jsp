<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ page import="org.hibernate.*,
org.hibernate.boot.*,
org.hibernate.boot.registry.StandardServiceRegistryBuilder,
org.hibernate.cfg.Configuration,
java.util.*,
com.niit.techno.demo.Employee" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

Configuration configuration = new Configuration();
configuration.configure("hibernate.cfg.xml");

SessionFactory factory = configuration.buildSessionFactory
	  (new StandardServiceRegistryBuilder().configure().build());

Session sess= factory.openSession();
sess.beginTransaction();
Employee e1= new Employee();
//e1.setId(101);
e1.setFirstName("jack");
e1.setLastName("jill");

sess.save(e1);
sess.getTransaction().commit();
out.println("successfully saved");



%>


</body>
</html>


