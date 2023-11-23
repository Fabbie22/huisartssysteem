<?php
session_start();
require_once("./connection.php");

$dbh = dbcon();

$data = $_POST;
   
if(isset($data['patienttoevoegen'])){
      
      $naam = $data['voor_naam']." ".$data['achter_naam'];
      
      $addpatientquery = $dbh->prepare("INSERT INTO patient (voor_naam, achter_naam, adres, huisnummer, postcode, plaats, telefoonnummer, actief) 
      VALUES (:voor_naam, :achter_naam, :adres, :huisnummer, :postcode, :plaats, :telefoonnummer, 1)");
      
      $querycheck = $addpatientquery->execute(array(
            'voor_naam' => $data['voor_naam'],
            'achter_naam' => $data['achter_naam'],
            'adres' => $data['adres'],
            'huisnummer' => $data['huisnummer'],
            'postcode' => $data['postcode'],
            'plaats' => $data['plaats'],
            'telefoonnummer' => $data['telefoonnummer']
      ));
      
      if($querycheck){
        $_SESSION['addmessage'] = "Patiënt toegevoegd";
        header('Location: index.php');
        exit(0);
      }
    else{
        $_SESSION['addmessage'] = "Patiënt toevoegen mislukt";
        header('Location: index.php');
        exit(0);
      }
      
      header("Location: ./index.php");
}

if(isset($data['notitietoevoegen'])){

      $addnotitiequery = $dbh->prepare("INSERT INTO notitie (datum, diagnose, symptomen, behandeling) VALUES (NOW(), :diagnose, :symptomen, :behandeling)");

      $addnotitiequery->execute(array(
            'diagnose' => $data['diagnose'],
            'symptomen' => $data['symptomen'],
            'behandeling' => $data['behandeling']
      ));

      $notitie_id = $dbh->lastInsertId();
}
if(isset($data['notitietoevoegen'])){

      $addnotitietopatient = $dbh->prepare("INSERT INTO patient_has_notitie (patient_patient_id, notitie_notitie_id) VALUES (:patient_patient_id, :notitie_notitie_id)");

      $querycheck = $addnotitietopatient->execute(array(
            'patient_patient_id' => $data['patient_id'],
            'notitie_notitie_id' => $notitie_id
      ));

      if($querycheck){
            $_SESSION['notitiemessage'] = "Notitie toegevoegd";
            header('Location: patientgegevens.php?patient_id='.$data['patient_id'].'');
            exit(0);
          }
        else{
            $_SESSION['notitiemessage'] = "Notitie toevoegen mislukt";
            header('Location: patientgegevens.php?patient_id='.$data['patient_id'].'');
            exit(0);
          }
}

if(isset($data['update_button'])){
 $patient_id = $data['patient_id'];
 $voornaam = $data['voor_naam']; 
 $achternaam = $data['achter_naam'];
 $adres = $data['adres'];
 $huisnummer = $data['huisnummer'];
 $postcode = $data['postcode'];
 $plaats = $data['plaats'];
 $telefoonnummer = $data['telefoonnummer'];
 $actief = $data['actief'];


 $query = "UPDATE patient SET voor_naam=:voor_naam, achter_naam=:achter_naam, 
 adres=:adres, huisnummer=:huisnummer, postcode=:postcode, plaats=:plaats, telefoonnummer=:telefoonnummer, actief=:actief WHERE patient_id=:patient_id LIMIT 1";

 $stmt = $dbh->prepare($query);

 $data = [
    ':voor_naam' => $voornaam,
    ':achter_naam' => $achternaam,
    ':adres' => $adres,
    ':huisnummer' => $huisnummer,
    ':patient_id' => $patient_id,
    ':postcode' => $postcode,
    ':plaats' => $plaats,
    ':telefoonnummer' => $telefoonnummer,
    ':actief' => $actief
 ];

 $startstatement = $stmt->execute($data);

 if($query_execute){
      header('Location: patientgegevens.php?patient_id='.$data['patient_id'].'');
    exit(0);
 }
 else{
    header('Location: index.php');
    exit(0);
 }
}
if(isset($data['register'])){

$email = $data['email'];
$username = $data['user_name'];
$password = password_hash($data['password'], PASSWORD_DEFAULT);

$insertinlog = $dbh->prepare("INSERT INTO account (user_name, password, email) VALUES (:user_name, :password, :email)");

$insertinlog->execute(array(
  'user_name' => $username,
  'password' => $password,
  'email' => $email
));

header('Location:register.php');
}