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