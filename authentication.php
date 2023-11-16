<?php
//start sessie
session_start();

require_once('./connection.php');

$dbh = dbcon();

// Als er op de knop word gedrukt doe dan onderstaand.
if(isset($_POST["login"]))  
      {  
          //pak de username of email en wachtwoord en neem het gene wat ingevuld is in de execute functie en check of het met de database klopt.
                $query = "SELECT * FROM account WHERE user_name = :user_name AND password = :password OR email = :email AND password = :password";  
                $statement = $dbh->prepare($query);  
                $statement->execute(  
                     array(  
                          'user_name'     =>     $_POST["user_name"],  
                          'password'     =>     $_POST["password"],
                          'email'       => $_POST['user_name']  
                     )  
                );
                // Tel de rijen en voer dan de volgende gegevens in in de sessie  
                $count = $statement->rowCount();  
                if($count > 0)  
                {  
                    //Zet in sessie variabele username het ingevoerde en zet loggedin op true. geld voor alles onderstaand
                     $_SESSION["username"] = $_POST["username"];
                     $_SESSION['password'] = $_POST['password'];
                     $_SESSION['email'] = $_POST['user_name'];
                     $_SESSION['loggedin'] = TRUE;

                     //Ga naar Index.php
                     header("location:./index.php");  
                }  
                else  
                {  
                    // Als gegevens niet kloppen ga dan terug naar inlog.php
                    header("Location: ./login.php");  
                }  
           } 
//

