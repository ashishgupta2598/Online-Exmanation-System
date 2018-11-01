<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>
div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}

nav {
    float: left;
    max-width: 960px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    text-decoration: none;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}
</style>
</head>
<body>

<div class="container">

<header>
   <h1>Inheritance</h1>
</header> 
  
<nav>
  <ul>
    <li><a href="#"> 1.Introducton of C++ with OOP</a></li>
    <li><a href="#">2.Getting Into OOP's</a></li>
    <li><a href="#">3.Classes and Objects</a></li>
     <li><a href="#">4.Inheritance</a></li>
     <li><a href="#">5.Overloading(operator and Method)</a></li>
     <li><a href="#">6.Data Abstraction</a></li>
     <li><a href="#">7s.Polymorphism</a></li>
      <li><a href="#">8.Multithreading </a></li>
  </ul>
</nav>

<article>
  <h1>Inheritance </h1><p>

When creating a class, instead of writing completely new data members and member functions, the programmer can designate that the new class should inherit the members of an existing class. This existing class is called the base class, and the new class is referred to as the derived class.

The idea of inheritance implements the is a relationship. For example, mammal IS-A animal, dog IS-A mammal hence dog IS-A animal as well and so on.</p>
</article>



</div>

</body>
</html>
