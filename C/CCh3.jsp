<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ch3-Loop Control</title>
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
   <h1>Introduction to C andData Types and Operators</h1>
</header>
  
<nav>
  <ul>
    <li><a href="#">1.Getting Started(Data Types,Etc)
    </a></li>
    <li><a href="#">2.Desision Control</a></li>
    <li><a href="#">3.Loop control</a></li>
     <li><a href="#">5.Case Control</a></li>
     <li><a href="#">6.Arrays and Pointers</a></li>
     <li><a href="#">7.Functions And Structures</a></li>
     <li><a href="#">8.Dynamic Memory Allocations</a></li>
  </ul>
</nav>
<article>
  <h1>Introduction</h1>
 <p>A loop statement allows us to execute a statement or group of statements multiple times. Given below is the general form of a loop statement in most of the programming languages −<br>
  <center><img src="F:\2nd year project\loop_architecture.jpg" alt="A picture Showing Loop Control"></center>
  <pre>
  Types Of Loops are-:
  1.while loop
    Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.

  2.for loop
    Executes a sequence of statements multiple times and abbreviates the code that manages the loop variable.

  3.do...while loop
    It is more like a while statement, except that it tests the condition at the end of the loop body.

  4.nested loops
You can use one or more loops inside any other while, for, or do..while loop.
  </pre>
  </p>
  <p>
  <h2>Loop Control Statements</h2>
  <pre>
   Loop control statements change execution from its normal sequence. When execution leaves a scope, all automatic objects that were created in that scope are destroyed.

   C supports the following control statements.

Sr.No.	Control Statement & Description
  <b>1.break statement</b>
    Terminates the loop or switch statement and transfers execution to the statement immediately following the loop or switch.

  <b>2.continue statement</b>
    Causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating.

  </b>3.goto statement</b>
  Transfers control to the labeled statement.</p>
  
  </pre>
 
</article>
</div>
</body>
</html>