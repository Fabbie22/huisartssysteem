<?php

require_once("./connection.php");

$dbh = dbcon();

if(isset($_GET['patient_id'])){

    $patientverwijder = $_GET['patient_id'];

    $query = "DELETE FROM patient WHERE patient_id = :patient_id";

    $stmt = $dbh->prepare($query);

    $data = [
        ':patient_id' => $patientverwijder
    ];

    $stmt->execute($data);

    header("Location: index.php");
    
}
if(isset($_GET['notitie_notitie_id'])){

    $notitieverwijder = $_GET['notitie_notitie_id'];
    $patientnotitieverwijder = $_GET['patient_patient_id'];

    $query = "DELETE FROM patient_has_notitie WHERE notitie_notitie_id = :notitie_notitie_id AND patient_patient_id = :patient_patient_id;
    DELETE FROM notitie WHERE notitie_id = :notitie_notitie_id";

    $stmt = $dbh->prepare($query);

    $data = [
        ':notitie_notitie_id' => $notitieverwijder,
        ':patient_patient_id' => $patientnotitieverwijder
    ];

    $stmt->execute($data);

    header("Location: index.php");

}