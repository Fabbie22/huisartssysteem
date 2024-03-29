<?php
session_start();
if(!isset($_SESSION['loggedin'])){
  header("Location: ./login.php");
  exit;
}
require_once("./connection.php");

$dbh = dbcon();

?>
<html lang="nl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./reset.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="./style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/382a0b3e8b.js" crossorigin="anonymous"></script>
  <title>HiX - Patient</title>
  <link rel="icon" type="image/x-icon" href="./favicon.jpg">
</head>
<body>
  <nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.php"><i class="fa-solid fa-house-medical" style="color: #000000;"></i> HiX</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" href="index.php"><i class="fa-solid fa-bars" style="color: #000000;"></i> Overzicht</a>
          </li>
        </ul>
      </div>
    <span class="navbar-text" style="margin-right: 1%;">
      <a class="text-dark" href="./index.php"><button class="btn btn-success"><i class="fa fa-reply" style="color: #ffffff;"></i> Terug naar overzicht</button></a>
    </span>
    <span class="navbar-text">
      <a class="text-dark" href="./logout.php"><button class="btn btn-primary"><i class="fa-solid fa-arrow-right-from-bracket" style="color: #ffffff;"></i> Uitloggen</button></a>
    </span>
    </nav>
    <?php if(isset($_SESSION['notitiemessage'])) :  ?>
  <div class="alert alert-warning alert-dismissible fade show" role="alert">
       <div><?= $_SESSION['notitiemessage'] ?></div>
       <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
            <?php 
                unset($_SESSION['notitiemessage']);
                endif; 
            ?>
    <?php
    if(isset($_GET['patient_id']))
    {
      $patient_id = $_GET['patient_id'];
      
      $query = "SELECT * FROM patient WHERE patient_id=:patient_id";
      $statement = $dbh->prepare($query);
      $data = [':patient_id' => $patient_id];
      $statement->execute($data);
      
      $result = $statement->fetch(PDO::FETCH_ASSOC);
    }
    ?>
<div class="container">
  <form action='addfunctions.php' method="POST" enctype="multipart/form-data">
    
    <input type="hidden" name="patient_id" value="<?=$result['patient_id']?>" />
    <div class="row">
      <div class="col-md-6">
        <label for="voor_naam" class="form-label">Voornaam</label>
        <input type="text" class="form-control" id="voor_naam" name="voor_naam" value="<?=$result['voor_naam']?>" disabled  />
      </div>
      <div class="col-md-6">
        <label for="achter_naam" class="form-label">Achternaam</label>
        <input type="text" class="form-control" id="achter_naam" name="achter_naam" value="<?=$result['achter_naam']?>" disabled />
      </div>
      <div class="col-md-8">
        <label for="adres" class="form-label">Adres</label>
        <input type="text" class="form-control" id="adres" name="adres" value="<?=$result['adres']?>" disabled />
      </div>
      <div class="col-md-4">
        <label for="huisnummer" class="form-label">Huisnummer</label>
        <input type="text" class="form-control" id="huisnummer" name="huisnummer" value="<?=$result['huisnummer']?>" disabled />
      </div>
      <div class="col-md-6">
        <label for="postcode" class="form-label">Postcode</label>
        <input type="text" class="form-control" id="postcode" name="postcode" value="<?=$result['postcode']?>" disabled/>
      </div>
      <div class="col-md-6">
        <label for="plaats" class="form-label">Plaats</label>
        <input type="text" class="form-control" id="plaats" name="plaats" value="<?=$result['plaats']?>" disabled/>
      </div>
      <div class="col-md-12">
        <label for="telefoonnummer" class="form-label">Telefoonnummer</label>
        <input type="text" class="form-control" id="telefoonnummer" name="telefoonnummer" value="<?=$result['telefoonnummer']?>" disabled/>
      </div>
      <div class="col-md-12">
        <label for="actief" class="form-label">Activiteit</label>
        <select name="actief" id="actief" class="form-select" disabled>
          <?php
                  if($result['actief'] == 1){
                    echo "<option value=".$result['actief']." selected>Actief</option>";
                    echo "<option value='0'>Inactief</option>";
                  }
                  else{
                    echo "<option value='1'>Actief</option>";
                    echo "<option value=".$result['actief']." selected>Inactief</option>";
                  }
                  ?>
                </select>            
              </div>
              <button type="button" id="lock" class="btn btn-secondary topgap2 col-md-4" onclick="toggleInputs()">
              <i id="lockIcon" class="fa-solid fa-lock" style="color: #ffffff;"></i> Bewerken</button>              
              <button type="submit" name="update_button" class="btn btn-primary topgap2 col-md-4"><i class="fa-solid fa-floppy-disk" style="color: #ffffff;"></i> Opslaan</button>
              <button type="button" class='btn btn-success topgap2 col-md-4' data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-plus" style="color: #ffffff;"></i> Notitie Toevoegen</button></a>
              
            </form>
  </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Notitie Toevoegen</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="./addfunctions.php" method="post">
          <input type="hidden" name="patient_id" value="<?=$result['patient_id']?>" />
          <div class="row">
            <div class="col-md-12 topgap">
              <input type="text" class="form-control" placeholder="Diagnose (max 150 tekens)" aria-label="Diagnose" name="diagnose" id="diagnose" maxlength="150" required>
            </div>
            <div class="col-md-12 topgap">
              <input type="text" class="form-control" placeholder="Symptomen (max 300 tekens)" aria-label="Symptomen" name="symptomen" id="symptomen" maxlength="300" required>
            </div>
            <div class="col-md-12 topgap">
              <textarea class="form-control" placeholder="Hier je behandeling (max 1000 tekens) " aria-label="Hier je tekst" name="behandeling" id="behandeling" maxlength="1000" required></textarea>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Sluiten</button>
          <button type="submit" class="btn btn-primary" name="notitietoevoegen">Notitie Toevoegen</button>
        </div>
      </form>
    </div>
  </div>
</div>
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Notitie verwijderen</h1>
      </div>
      <div class="modal-body">
        Weet je zeker dat je deze notitie wil verwijderen?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-bs-dismiss="modal">Afbreken</button>
        <a class="btn btn-danger btn-ok">Verwijderen</a>
      </div>
    </div>
  </div>
</div>
<div class="container mt-3">
  <h2>Historie</h2>
  
  <?php
  $notitie = notities($dbh, $patient_id);
  
  if(!$notitie){
    echo "Er is geen historie bekend bij deze patiënt";
  }
  
  foreach($notitie as $notitiepatient){
    $notitie_notitie_id = $notitiepatient['notitie_notitie_id'];
    $patient_patient_id = $notitiepatient['patient_patient_id'];
    echo '<div class="card topgap2">
    <h4 class="card-title"><b>Diagnose: </b>'.$notitiepatient['diagnose'].'</h4>
    <h6 class="card-title">Datum: <b>'.$mysqldate = date('d-m-Y', strtotime($notitiepatient['datum'] )).'</b></h6>
    <div class="card-body"><p><b>Symptomen: </b>'.$notitiepatient['symptomen'].'</p><p><b> Behandeling: </b>'.$notitiepatient['behandeling'].'</p></div>
    <button class="btn btn-danger" data-href=delete.php?notitie_notitie_id=' . $notitie_notitie_id. '&patient_patient_id='. $patient_patient_id.' data-bs-toggle="modal" data-bs-target="#confirm-delete"><i class="fa-solid fa-trash-can"></i></button>
    </div>';
  }
  ?>
  </div>
  <script>  
$(document).ready(function() {
  $('#confirm-delete').on('show.bs.modal', function(e) {
    var hrefValue = $(e.relatedTarget).data('href');
    $(this).find('.btn-ok').attr('href', hrefValue);
  });
});
</script>
<script src="script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>