<?php

require_once("./connection.php");

$dbh = dbcon();

?>
<!DOCTYPE html>
<html lang="nl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./reset.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="./style.css">
  <script src="https://kit.fontawesome.com/382a0b3e8b.js" crossorigin="anonymous"></script>
  <title>De Poort Huisartsen</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-house-medical" style="color: #000000;"></i> De Poort Huisartsen</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Zoeken</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Sorteren</a>
        </li>
        <li class="nav-item">
          <a class="nav-link"><button class='btn btn-primary' style='width: 100%;'><i class="fa-solid fa-plus" style="color: #ffffff;"></i> Patient Toevoegen</button></a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Voornaam</th>
      <th scope="col">Achternaam</th>
      <th scope="col">Postcode</th>
      <th scope="col">Plaats</th>
      <th scope="col">Telefoonnummer</th>
      <th scope="col">Bekijken</th>
      <th scope="col">Verwijderen</th>
    </tr>
  </thead>
  <tbody>
  <?php
  $patient = patienten($dbh);

  foreach($patient as $data){
    echo '<tr>';
    echo "<td>".$data['voor_naam']."</td> ";
    echo "<td>".$data['achter_naam']."</td>";
    echo "<td>".$data['postcode']."</td>";
    echo "<td>".$data['plaats']."</td>";
    echo "<td>".$data['telefoonnummer']."</td>";
    echo "<td><button class='btn btn-primary' style='width: 100%;'><i class='fa-solid fa-eye' style='color: #ffffff;'></i> / <i class='fa-regular fa-pen-to-square' style='color: #ffffff;'></i></button></td>";
    echo "<td><button class='btn btn-danger' style='width: 100%;'><i class='fa-solid fa-trash-can' style='color: #ffffff;'></i></button></td>";
    echo "</tr>";
  }
?>
  </tbody>
</table>







<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>