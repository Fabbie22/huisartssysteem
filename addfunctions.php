<?php
require_once("./connection.php");

$dbh = dbcon();

$data = $_POST;
   
if(isset($data['patienttoevoegen'])){
      
      $naam = $data['voor_naam']." ".$data['achter_naam'];
      
      $addpatientquery = $dbh->prepare("INSERT INTO patient (voor_naam, achter_naam, adres, huisnummer, postcode, plaats, telefoonnummer) 
      VALUES (:voor_naam, :achter_naam, :adres, :huisnummer, :postcode, :plaats, :telefoonnummer)");
      
      $addpatientquery->execute(array(
            'voor_naam' => $data['voor_naam'],
            'achter_naam' => $data['achter_naam'],
            'adres' => $data['adres'],
            'huisnummer' => $data['huisnummer'],
            'postcode' => $data['postcode'],
            'plaats' => $data['plaats'],
            'telefoonnummer' => $data['telefoonnummer']
      ));
      
      echo "<script>alert('$naam is toegevoegd aan de database')</script>";
      
      header("Location: ./index.php");
}

if(isset($data['notitietoevoegen'])){

      $addnotitiequery = $dbh->prepare("INSERT INTO notitie (datum, onderwerp, tekst) VALUES (NOW(), :onderwerp, :tekst)");

      $addnotitiequery->execute(array(
            'onderwerp' => $data['onderwerp'],
            'tekst' => $data['tekst']
      ));

      $notitie_id = $dbh->lastInsertId();
}
if(isset($data['notitietoevoegen'])){

      $addnotitietopatient = $dbh->prepare("INSERT INTO patient_has_notitie (patient_patient_id, notitie_notitie_id) VALUES (:patient_patient_id, :notitie_notitie_id)");

      $addnotitietopatient->execute(array(
            'patient_patient_id' => $data['patient_id'],
            'notitie_notitie_id' => $notitie_id
      ));

      header('Location: patientgegevens.php?patient_id='.$data['patient_id'].'');
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


 $query = "UPDATE patient SET voor_naam=:voor_naam, achter_naam=:achter_naam, 
 adres=:adres, huisnummer=:huisnummer, postcode=:postcode, plaats=:plaats, telefoonnummer=:telefoonnummer WHERE patient_id=:patient_id LIMIT 1";

 $stmt = $dbh->prepare($query);

 $data = [
    ':voor_naam' => $voornaam,
    ':achter_naam' => $achternaam,
    ':adres' => $adres,
    ':huisnummer' => $huisnummer,
    ':patient_id' => $patient_id,
    ':postcode' => $postcode,
    ':plaats' => $plaats,
    ':telefoonnummer' => $telefoonnummer
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