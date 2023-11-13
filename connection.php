<?php
function dbcon(){
//Maakt verbinding met database
      $host = 'localhost';
      $dbname = 'phaserscoreboard';
      $user = 'root';
      $password = '';
      
      $dbh = new PDO('mysql:host='.$host.';dbname='.$dbname, $user, $password);
  
      return $dbh;
}