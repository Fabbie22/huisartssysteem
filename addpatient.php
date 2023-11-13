<?php
require_once("./connection.php");

$dbh = dbcon();

$data = $_POST;
            
$naam = $data['voor_naam']." ".$data['achter_naam'];

$addpatientquery = $dbh->prepare("INSERT INTO patient (patient_id, voor_naam, achter_naam, adres, huisnummer, postcode, plaats, telefoonnummer) 
VALUES (?, :voor_naam, :achter_naam, :adres, :huisnummer, :postcode, :plaats, :telefoonnummer)");

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