<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dynamic Memory Allocations</title>
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
   <h1>Dynamic Memory Allocations</h1>
</header>
  
<nav>
  <ul>
    <li><a href="#">1.Getting Started(Data Types,Etc)
    </a></li>
    <li><a href="#">2.Desision Control</a></li>
    <li><a href="#">3.Loop control</a></li>
     <li><a href="#">4.Case Control</a></li>
     <li><a href="#">5.Arrays and Pointers</a></li>
     <li><a href="#">6.Functions And Structures</a></li>
     <li><a href="#">7.Dynamic Memory Allocations</a></li>
  </ul>
</nav>

<article>
<pre>
The C programming language provides several functions for memory allocation and management. These functions can be found in the <stdlib.h> header file.
<b><i>1.void *calloc(int num, int size);</i></b>
      This function allocates an array of num elements each of which size in bytes will be size.

<b><i>2.void free(void *address);</i></b>
      This function releases a block of memory block specified by address.

<b><i>3.void *malloc(int num);</i></b>
      This function allocates an array of num bytes and leave them uninitialized.

<b><i>4.void *realloc(void *address, int newsize);</i></b>
      This function re-allocates memory extending it upto newsize.
  
  
</article>


</div>

</body>
</html>