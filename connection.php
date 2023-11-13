<?php
function dbcon(){
//Maakt verbinding met database
      $host = 'localhost';
      $dbname = 'huisartssysteem';
      $user = 'root';
      $password = '';
      
      $dbh = new PDO('mysql:host='.$host.';dbname='.$dbname, $user, $password);
  
      return $dbh;
}
function patienten($dbh){
      $patient = array();

      $patientquery = $dbh->prepare("SELECT patient_id, voor_naam, achter_naam, postcode, plaats, telefoonnummer
      FROM patient");

      $patientquery->execute();

      while ($row = $patientquery->fetch(PDO::FETCH_ASSOC)){
            $patient[] = $row;
      }

      return $patient;
}