<script>

(function() {
  function processRows() {
    var rows = document.getElementsByTagName("tr");

    for (var i = 0; i < rows.length; i++) {
      var row = rows[i];
      var tds = row.getElementsByTagName("td");

      if (tds.length === 0) continue;

      var isEmpty = true;

      for (var j = 0; j < tds.length; j++) {
        if (tds[j].textContent.replace(/\s/g, '') !== '') {
          isEmpty = false;
          break;
        }
      }

      if (isEmpty) {
        row.style.backgroundColor = "#0098a1";
      }
    }
  }

  // Run slightly delayed (more reliable than onload)
  setTimeout(processRows, 300);
})();

</script>