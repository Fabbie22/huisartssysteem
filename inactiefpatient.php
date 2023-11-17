<?php
session_start();
if(!isset($_SESSION['loggedin'])){
  header("Location: ./login.php");
  exit;
}
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/382a0b3e8b.js" crossorigin="anonymous"></script>
  <title>HiX - Inactief overzicht</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php"><i class="fa-solid fa-house-medical" style="color: #000000;"></i> HiX</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <button class="nav-link active" aria-current="page" onclick="Open()"><i class="fa-solid fa-magnifying-glass" style="color: #000000;"></i> Zoeken</button>
        </li>
        <li class="nav-item" id="zoekbalk" style="display:none;">
          <input type="search" class="form-control" id="search" placeholder="Patiënt Zoeken">
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#"><i class="fa-solid fa-arrow-up-z-a" style="color: #000000;"></i> Sorteren</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="inactiefpatient.php"><i class="fa-solid fa-arrow-up-z-a" style="color: #000000;"></i> Archief</a>
        </li>
        <li class="nav-item">
          <button type="button" class='btn btn-primary' style='width: 100%;' data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-plus" style="color: #ffffff;"></i> Patiënt Toevoegen</button></a>
        </li>
      </ul>
  </div>
  <span class="navbar-text">
        <a class="text-dark" href="./logout.php">Uitloggen</a>
    </span>
</nav>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Patiënt Toevoegen</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="./addfunctions.php" method="post">
        <div class="row">
          <div class="col-md-6">
            <input type="text" class="form-control" placeholder="Voornaam" aria-label="Voornaam" name="voor_naam" id="voor_naam" required>
          </div>
          <div class="col-md-6">
            <input type="text" class="form-control" placeholder="Achternaam" aria-label="Achternaam" name="achter_naam" id="acter_naam" required>
          </div>
          <div class="col-md-8 topgap">
            <input type="text" class="form-control" placeholder="Adres" aria-label="Adres" name="adres" id="adres" required>
          </div>
          <div class="col-md-4 topgap">
            <input type="text" class="form-control" placeholder="Huisnummer" aria-label="Huisnummer" name="huisnummer" id="huisnummer" required>
          </div>
          <div class="col-md-8 topgap">
            <input type="text" class="form-control" placeholder="Plaats" aria-label="Plaats" name="plaats" id="plaats" required>
          </div>
          <div class="col-md-4 topgap">
            <input type="text" class="form-control" placeholder="Postcode" aria-label="Postcode" name="postcode" id="postcode" required>
          </div>
          <div class="col-md-12 topgap">
            <input type="text" class="form-control" placeholder="Telefoonnummer" aria-label="Telefoonnummer" name="telefoonnummer" id="telefoonnummer" required>
          </div>
      </div>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Sluiten</button>
      <button type="submit" class="btn btn-primary" name="patienttoevoegen">Patiënt Toevoegen</button>
    </div>
  </form>
</div>
</div>
</div>
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Patiënt Verwijderen</h1>
            </div>
            <div class="modal-body">
                Weet je zeker dat je deze patiënt wil verwijderen?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-bs-dismiss="modal">Afbreken</button>
                <a class="btn btn-danger btn-ok">Verwijderen</a>
            </div>
        </div>
    </div>
</div>
<table class="table" id="mytable">
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
  $patient = patienten($dbh, 0);

  foreach($patient as $data){
    echo '<tr>';
    echo "<td>".$data['voor_naam']."</td> ";
    echo "<td>".$data['achter_naam']."</td>";
    echo "<td>".$data['postcode']."</td>";
    echo "<td>".$data['plaats']."</td>";
    echo "<td>".$data['telefoonnummer']."</td>";
    echo "<td><a href='patientgegevens.php?patient_id=".$data['patient_id']."'><button class='btn btn-primary' style='width: 100%;'><i class='fa-solid fa-eye' style='color: #ffffff;'></i> / <i class='fa-regular fa-pen-to-square' style='color: #ffffff;'></i></button></a></td>";
    echo "<td><button class='btn btn-danger' style='width: 100%;' data-href='delete.php?patient_id=".$data['patient_id']."' data-bs-toggle='modal' data-bs-target='#confirm-delete'><i class='fa-solid fa-trash-can'></button></td>";
    echo "</tr>";
  }
?>
  </tbody>
</table>
<script>
$(document).ready(function(){
  $('#search').keyup(function(){
    search_table($(this).val());
  });

  function search_table(value){
    $('#mytable tbody tr').each(function(){
      var found = false; // Using boolean values instead of strings
      $(this).find('td').each(function(){ // Changed $(this) to find td elements
        if($(this).text().toLowerCase().indexOf(value.toLowerCase()) >= 0){
          found = true;
        }
      });
      if(found){
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  }
});

</script>
<script>  
  $('#confirm-delete').on('show.bs.modal', function(e) {
    $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
  });
</script>
<script src="script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>