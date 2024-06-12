<!-- Do not change something in this file -->

<script>
    var poe = document.querySelectorAll("#poe > h1, #poe > h2");
 
    if (poe.length > 0)
    {
       if (!document.location.hash)
       {
          let headerTitle = poe[poe.length - 1].textContent;
          headerTitle = headerTitle.substring(0, headerTitle.length);
          document.location.hash = headerTitle; 
       }
    }
</script>