#CPSC 332 Database Project 1
April 10, 20222

Details:
---------
This DB and the website pages were hosted on CSUF MariaDB servers which uses MySQL. The website pages were developed using PHP, HTML and CSS. The relational DB diagram and schema were developed utilizing diagrams.net and coded using Atom, but implemented on CSUF MariaDB server.         

Connecting to the CSUF MariaDB server:
1. use putty to connect to <username>@shell.ecs.fullerton.edu
   
     a. login as: <username>

     b. <username>@shell.ecs.fullerton.edu's password:
  

Welcome Message:
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

                      *** Welcome To Titan ***
          *** California State University at Fullerton ***
               *** Department of Computer Science ***

   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

2. MySQL DB Login:
   
      mysql -u <username> -p -h mariadb
   
      Enter password:

      after this use command, use < username >, to use the database associated with your account and you should then be able to         execute any sql statements you would like to


Secure File Transfer Program/SFTP
Download WinSCP to the client machine running under Windows: http://winscp.net/eng/download.php

While connecting, please ensure the follows
Host: shell.ecs.fullerton.edu
File Protocol: SFTP

3. for php files
   
   1st make a directory called homepage: mkdir homepage

   2nd make sure that it is executable: chmod +x homepage

   3rd make a homepage titled index.html or index.php, This page will be found by default whenever you go to: 
   ecs.fullerton.edu/~<uasername> // not the <> are not part of the address 


Note:
*****
to access a certain page just add the page to the homepage directory and then the url for it will be be the same as above just with the filename at the end
