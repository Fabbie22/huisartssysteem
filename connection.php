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
function notities($dbh, $id){
      $notitie = array();

      $notitiequery = $dbh->prepare("SELECT notitie.datum, notitie.onderwerp, notitie.tekst  FROM patient 
      INNER JOIN patient_has_notitie 
      ON patient_has_notitie.patient_patient_id = patient.patient_id 
      INNER JOIN notitie
      ON notitie.notitie_id = patient_has_notitie.notitie_notitie_id WHERE patient_id= $id ORDER BY datum");

      $notitiequery->execute();

      while($row = $notitiequery->fetch(PDO::FETCH_ASSOC)){
            $notitie[] = $row;
      }
      return $notitie;      
}