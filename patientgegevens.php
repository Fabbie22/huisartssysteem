<?php
require_once("./connection.php");

$dbh = dbcon();

$datum = date('Y/m/d');
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
            <div class="col-md-12">
                <label for="actief" class="form-label">Activiteit</label>
                <select name="actief" id="actief" class="form-select">
                  <?php
                  if($result['actief'] == 1){
                    echo "<option value=".$result['actief']." selected>Ja</option>";
                    echo "<option value='0'>Nee</option>";
                  }
                  else{
                    echo "<option value='1'>Ja</option>";
                    echo "<option value=".$result['actief']." selected>Nee</option>";
                  }
                  ?>
                </select>            
              </div>
        <button type="submit" name="update_button" class="btn btn-primary topgap2 col-md-6"><i class="fa-solid fa-floppy-disk" style="color: #ffffff;"></i> Opslaan</button>
        <button type="button" class='btn btn-success topgap2 col-md-6' data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-plus" style="color: #ffffff;"></i> Notitie Toevoegen</button></a>

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
          <div class="col-md-12">
            <input type="text" class="form-control" placeholder="Onderwerp (max 50 tekens)" aria-label="Onderwerp" name="onderwerp" id="onderwerp" maxlength="50" required>
          </div>
          <div class="col-md-12 topgap">
            <textarea class="form-control" placeholder="Hier je tekst (max 1000 tekens) " aria-label="Hier je tekst" name="tekst" id="tekst" maxlength="1000" required></textarea>
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
  <h2>Notities</h2>
  
  <?php
  $notitie = notities($dbh, $patient_id);
  
 if(!$notitie){
  echo "Er zijn geen notities bekend bij deze patiënt";
 }

  foreach($notitie as $notitiepatient){
    $notitie_notitie_id = $notitiepatient['notitie_notitie_id'];
    $patient_patient_id = $notitiepatient['patient_patient_id'] ;
    echo '<div class="card topgap2">
      <h4 class="card-title">'.$notitiepatient['onderwerp'].'</h4>
      <h6 class="card-title">Datum: <b>'.$mysqldate = date( 'd-m-Y', strtotime($notitiepatient['datum'] )).'</b></h6>
      <div class="card-body">'.$notitiepatient['tekst'].'</div>
      <button class="btn btn-danger" data-href=delete.php?notitie_notitie_id=' . $notitie_notitie_id. '&patient_patient_id='. $patient_patient_id.' data-bs-toggle="modal" data-bs-target="#confirm-delete"><i class="fa-solid fa-trash-can"></i></button>
    </div>';
  }
  ?>
  </div>
  <script>  
  $('#confirm-delete').on('show.bs.modal', function(e) {
    $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
  });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>