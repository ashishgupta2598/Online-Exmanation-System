<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Array and Pointers</title>
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
   <h1>Arrays and Pointers</h1>
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
  <h2>Arrays</h2>
  <p>Arrays a kind of data structure that can store a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.

 <h3>Declaring Arrays</h3>
    To declare an array in C, a programmer specifies the type of the elements and the number of elements required by an array as follows −

<b><i>type arrayName [ arraySize ];</i></b>
     <br>This is called a single-dimensional array. The arraySize must be an integer constant greater than zero and type can be any valid C data type.\
     <h3>Initializing Arrays</h3>
<br>You can initialize an array in C either one by one or using a single statement as follows −

<b><i>double balance[5] = {1000.0, 2.0, 3.4, 7.0, 50.0};</b></i>
     <br>The number of values between braces { } cannot be larger than the number of elements that we declare for the array between square brackets [ ].

 <h2>Pointers</h2>
A pointer is a variable whose value is the address of another variable, i.e., direct address of the memory location. Like any variable or constant, you must declare a pointer before using it to store any variable address. The general form of a pointer variable declaration is −

<b><i>type *var-name;</i></b><br><br>
Here, type is the pointer's base type; it must be a valid C data type and var-name is the name of the pointer variable. The asterisk * used to declare a pointer is the same asterisk used for multiplication. However, in this statement the asterisk is being used to designate a variable as a pointer. <br>Take a look at some of the valid pointer declarations −
<b><i><pre>
int    *ip;    /* pointer to an integer */
double *dp;    /* pointer to a double */
float  *fp;    /* pointer to a float */
char   *ch     /* pointer to a character */</pre></i></b><br><br>
The actual data type of the value of all pointers, whether integer, float, character, or otherwise, is the same, a long hexadecimal number that represents a memory address. The only difference between pointers of different data types is the data type of the variable or constant that the pointer points to.

<h3>How to Use Pointers?</h3>
There are a few important operations, which we will do with the help of pointers very frequently. <b>(a)</b> We define a pointer variable,<b>(b)</b> assign the address of a variable to a pointer and <b>(c)</b> finally access the value at the address available in the pointer variable. This is done by using unary operator * that returns the value of the variable located at the address specified by its operand. The following example makes use of these operations −
<br><br>
 <pre>
 <b><i>Live Demo
#include <stdio.h>

int main () {

   int  var = 20;   /* actual variable declaration */
   int  *ip;        /* pointer variable declaration */

   ip = &var;  /* store address of var in pointer variable*/

   printf("Address of var variable: %x\n", &var  );

   /* address stored in pointer variable */
   printf("Address stored in ip variable: %x\n", ip );

   /* access the value using the pointer */
   printf("Value of *ip variable: %d\n", *ip );

   return 0;
}
</i></b></pre>

When the above code is compiled and executed, it produces the following result −

<br>Address of var variable: bffd8b3c
<br>Address stored in ip variable: bffd8b3c
<br>Value of *ip variable: 20

<h3>NULL Pointers</h3>
It is always a good practice to assign a NULL value to a pointer variable in case you do not have an exact address to be assigned. This is done at the time of variable declaration. A pointer that is assigned NULL is called a null pointer.
</article>


</div>

</body>
</html>