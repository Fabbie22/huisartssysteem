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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/382a0b3e8b.js" crossorigin="anonymous"></script>
  <title>De Poort Huisartsen</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php"><i class="fa-solid fa-house-medical" style="color: #000000;"></i> De Poort Huisartsen</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
      <li class="nav-item">
          <a class="nav-link active" href="index.php"><i class="fa-solid fa-book-medical" style="color: #000000;"></i> Overzicht</a>
        </li>
      </ul>
  </div>
</nav>
<?php
    if(isset($_GET['patient_id']))
        {
            $patient_id = $_GET['patient_id'];

            $query = "SELECT * FROM patient WHERE patient_id=:patient_id LIMIT 1";
            $statement = $dbh->prepare($query);
            $data = [':patient_id' => $patient_id];
            $statement->execute($data);

            $result = $statement->fetch(PDO::FETCH_ASSOC);
                        }
                        ?>
<div class="container">
<form action='patientdetail.php' method="POST" enctype="multipart/form-data" class="col-md-6">

<input type="hidden" name="id" value="<?=$result['patient_id']?>" />
  <div class="row col-md-9">
            <div class="col-md-6">
                <label for="voor_naam" class="form-label">Voornaam</label>
                <input type="text" class="form-control" id="voor_naam" name="voor_naam" value="<?=$result['voor_naam']?>"  />
            </div>
            <div class="col-md-6">
                <label for="achter_naam" class="form-label">Achternaam</label>
                <input type="text" class="form-control" id="achter_naam" name="achter_naam" value="<?=$result['achter_naam']?>" />
            </div>
            <div class="col-md-8">
                <label for="adres" class="form-label">Adres</label>
                <input type="text" class="form-control" id="adres" name="adres" value="<?=$result['adres']?>" />
            </div>
            <div class="col-md-4">
              <label for="huisnummer" class="form-label">Huisnummer</label>
              <input type="text" class="form-control" id="huisnummer" name="huisnummer" value="<?=$result['huisnummer']?>" />
            </div>
            <div class="col-md-6">
                <label for="postcode" class="form-label">Postcode</label>
                <input type="text" class="form-control" id="postcode" name="postcode" value="<?=$result['postcode']?>" />
            </div>
            <div class="col-md-6">
                <label for="plaats" class="form-label">Plaats</label>
                <input type="text" class="form-control" id="plaats" name="plaats" value="<?=$result['plaats']?>" />
            </div>
            <div class="col-md-12">
                <label for="telefoonnummer" class="form-label">Telefoonnummer</label>
                <input type="text" class="form-control" id="telefoonnummer" name="telefoonnummer" value="<?=$result['telefoonnummer']?>" />
            </div>
        <button type="submit" name="update_button" class="btn btn-primary topgap2"><i class="fa-solid fa-floppy-disk" style="color: #ffffff;"></i> Opslaan</button>
    </form>
  </div>
  <div class="row col-md-3">TEST</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>