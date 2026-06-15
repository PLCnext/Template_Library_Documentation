<script>
/* ------------------------------------------------
   Expand / collapse level-2 navigation (FIXED)
-------------------------------------------------- */


document.addEventListener("DOMContentLoaded", function () {

  // hide all sub-lists initially
  document.querySelectorAll("#toc li > ul, #toc li > ol")
    .forEach(list => list.style.display = "none");

  // attach click handler to ALL TOC links
  document.querySelectorAll("#toc a").forEach(link => {
    link.addEventListener("click", function (event) {
       event.preventDefault();

      const targetId = link.getAttribute("href").substring(1);

      // toggle submenu if present
      const li = link.closest("li");
      const subList = li.querySelector(":scope > ul, :scope > ol");
      if (subList) {
        subList.style.display =
          subList.style.display === "block" ? "none" : "block";
      }

      // ✅ ALWAYS open the chapter
      if (targetId) {
        showChapter(targetId);
        history.replaceState(null, "", "#" + targetId);
      }
    });
  });
});

</script>