function Open() {
  var x = document.getElementById("zoekbalk");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
function toggleInputs() {
  var inputs = document.querySelectorAll('input[type="text"]');
  var drop = document.getElementById("actief");
  var lockIcon = document.getElementById('lockIcon');
  inputs.forEach(function(input) {
      input.disabled = !input.disabled;
  });
  drop.disabled = !drop.disabled;
  if (lockIcon.classList.contains('fa-lock')) {
    lockIcon.classList.remove('fa-lock');
    lockIcon.classList.add('fa-unlock');
} else {
    lockIcon.classList.remove('fa-unlock');
    lockIcon.classList.add('fa-lock');
}
}