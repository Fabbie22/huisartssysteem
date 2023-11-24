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
function paginate(table, page_size) {
  var tbody = table.find('tbody');
  var rows = tbody.find('tr');
  var num_pages = Math.ceil(rows.length / page_size);

  // Create pagination links
  var pagination = $('#pagination');
  pagination.empty();
  for (var i = 1; i <= num_pages; i++) {
    var link = $('<a href="#" class="page-link">' + i + '</a>');
    link.data('page', i);
    pagination.append(link);
  }

  // Show initial page
  showPage(1);

  // Handle pagination link clicks
  pagination.on('click', 'a.page-link', function(e) {
    e.preventDefault();
    var page = $(this).data('page');
    showPage(page);
  });

  // Function to display rows for a specific page
  function showPage(page) {
    var start = (page - 1) * page_size;
    var end = start + page_size;
    rows.hide().slice(start, end).show();
  }
}

// Call pagination function on document ready
$(document).ready(function() {
  var table = $('#mytable');
  var page_size = 10; // Number of rows per page
  paginate(table, page_size);
});