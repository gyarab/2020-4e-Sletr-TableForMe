<%--
  Created by IntelliJ IDEA.
  User: vojte
  Date: 27.01.2021
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    /*
    Toto je hlavní ovládací panel pro restauratéry. Je implementován do všech stránek spadajících do složky owners mimo login.jsp
     */
%>
<html>
<head>
    <link rel="shortcut icon" href="../images/favicon.ico">
    <link rel="stylesheet" href="../css/page.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title></title>

</head>
    <%
    request.setCharacterEncoding("UTF-8");
    String uid = (String) session.getAttribute("owner");
/*
Navbar je inspirován ukázkovým komponentem od Bootsrapu https://getbootstrap.com/docs/4.1/components/navbar/
 */
%>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="home.jsp"> <img src="../images/Table4Me41.png" alt=""></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">

            <li class="nav-item">
                <a class="nav-link" href="editsetup.jsp"> Úprava otevíracích hodin a kapacity<span
                        class="sr-only"></span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="description.jsp">Nastavte si popis pro hosty</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="categories.jsp"> Co vaříte?</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="reservation.jsp">Přidat vlastní rezervaci</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="dayoff.jsp">Uzavřít restauraci v daný den</a>
            </li>


        </ul>
        <ul class="navbar-nav " style="float: right">

            <li class="nav-item dropdown ">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Účet
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="../logout.jsp">Odhlašte se</a>
                    <a class="dropdown-item" href="editpass.jsp">Změnit heslo</a>
                </div>
            </li>

        </ul>
    </div>
</nav>



