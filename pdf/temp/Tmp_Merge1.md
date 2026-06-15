<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Library name ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Change library name here (use an ID for your library as prefix, e.g. "MB" for Modbus): *** -->

<div class="header">

# LIBID_LibName

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Company logo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Change logo path here or overwrite the existing logo image *** -->

<div class="logo">

<img src="./_images/company_logo.png"> <!-- *** For libraries from Phoenix Contact use: ./_images/pxc_logo.png *** -->

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Intro (general information) ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="startpage" class="intro">

# Function block library for PLCnext Engineer

<br>

<!-- *** Adjust information here: *** -->

**Library version:** 2.0.0 <!-- Library version format: Major.Minor.Patch --> <br>

**Document revision:** 2.20 <br>

**Release date:** 2026-04-30 <br>

This documentation is available in English only. <br>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Company address ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Change address here: *** -->

**Your Company** <br>
Company Street 123 <br>
12345 City, Country <br>

<!-- 
PHOENIX CONTACT GmbH & Co. KG <br>
Flachsmarktstrasse 8 <br>
D-32825 Blomberg, Germany <br>
-->

</div><div class="header"></div>

<nav>
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Create table of contents here ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

## CONTENTS

::: {#toc .toc}

1. [Startpage](#startpage)                  <!-- *** Mandatory -> Keep this chapter *** -->   
2. [General information](#general_info)     <!-- *** Mandatory -> Keep this chapter *** -->   
3. [Installation hints](#installation)      <!-- *** Mandatory -> Keep this chapter *** -->   
4. [Change notes](#change_notes)            <!-- *** Mandatory -> Keep this chapter *** -->   
5. [Naming conventions](#conventions)       <!-- *** Mandatory -> Keep this chapter *** -->   
6. [Library components](#components)        <!-- *** Mandatory -> Keep this chapter *** -->   
7. [LIBID_My_FU1_1](#LIBID_My_FU1_1)        <!-- *** Change or delete *** -->   
8. [LIBID_My_FB1_1](#LIBID_My_FB1_1)        <!-- *** Change or delete *** --> 
9. [Group 1](#Group_1)                      <!-- *** Change or delete *** --> 
    - [LIBID_My_FB2_1](#LIBID_My_FB2_1)     <!-- *** Change or delete *** --> 
    - [LIBID_My_FB3_1](#LIBID_My_FB3_1)     <!-- *** Change or delete *** --> 
10. [HMI symbols](#HMI_Symbols)             <!-- *** Change or delete *** --> 
    - [LIBID_SYM_Name_1](#LIBID_SYM_Name_1) <!-- *** Change or delete *** --> 
11. [User-defined data types](#udt)         <!-- *** Mandatory if you use user-defined types in your library *** -->
12. [Diag codes of used firmware blocks](#fw_fb_diag_codes) <!-- *** Mandatory if you use firmware blocks in your library *** -->
13. [Third-party licenses](#licenses)       <!-- *** Mandatory if you use third-party software in your library *** -->
14. [Known issues](#known_issues)           <!-- *** Mandatory if your library has known issues *** -->
15. [Startup example(s)](#example)          <!-- *** Mandatory -> Keep this chapter *** -->
16. [Support](#support)                     <!-- *** Mandatory -> Keep this chapter *** -->

:::

</nav>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- JavaScript for chapter handling - Do NOT change! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<script>
  
/* ----------------------------------------------------------------------------------
   Main chapter / navigation logic
------------------------------------------------------------------------------------- */
function showChapter(id) {
  // Remove active class from all sections
  document.querySelectorAll('.intro, .main')
    .forEach(el => el.classList.remove('active'));

  let el = document.getElementById(id);

  if (el) {
    // Case 1: Full chapter (main or intro)
    if (el.classList.contains('main') || el.classList.contains('intro')) {
      el.classList.add('active');

      // Ensure page starts at top
      window.scrollTo({ top: 0, behavior: "auto" });
      return;
    }

    // Case 2: Sub-element (block inside chapter)
    let parent = el.closest('.main, .intro');

    if (parent) {
      parent.classList.add('active');

      // Scroll to element AFTER rendering
      const yOffset = -70;
      const y = el.getBoundingClientRect().top + window.pageYOffset + yOffset;
      window.scrollTo({ top: y, behavior: "smooth" });
    }
  }
}

/* ----------------------------------------------------------------------------------
   Initial page load handling
------------------------------------------------------------------------------------- */
window.addEventListener("load", function () {
  const chapterName = window.location.hash.substring(1);

  if (chapterName === "") {
    showChapter('startpage');
  } else {
    showChapter(chapterName);
  }
});

/* ----------------------------------------------------------------------------------
   Hash change handling (when URL changes)
------------------------------------------------------------------------------------- */
window.addEventListener("hashchange", function () {
  const id = window.location.hash.substring(1);

  if (id) {
    showChapter(id);
  }
});

</script>
