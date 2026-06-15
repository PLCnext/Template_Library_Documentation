<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- User-defined data types ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Keep this file, if you use user-defined data types in your library *** -->
<!-- *** Delete this file, if there is no user-defined data type in your library *** -->

<div id="udt" class="main">

# User-defined data types

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if you use user-defined structures in your library  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="LIBID_ST_Motor" class="block"> <!-- *** Change id here *** -->

## Structure LIBID_ST_Motor <!-- *** Change name of the structure *** -->

<!-- *** Change table content here: *** -->

| Element name        | Data type     | Initial value   | Description                                |
|---------------------|---------------| --------------  |--------------------------------------------|
| xMotorStart         | BOOL          | FALSE           | Trigger to start motor|
| xMotorStop          | BOOL          | FALSE           | Trigger to stop motor |
| iSpeed              | INT           | 0               | Motor speed |
| xError              | BOOL          | FALSE           | Motor error occurred |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if you use user-defined enumerations in your library  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="LIBID_E_TrafficLight" class="block"> <!-- *** Change id here *** -->

## Enumeration LIBID_E_TrafficLight <!-- *** Change name of the enumeration *** -->

<!-- *** Change table content here: *** -->

| Element name        | Value        | Is initial value | Description                                |
|---------------------|--------------|------------------|--------------------------------------------|
| Red                 | 0            | x                | Red traffic light |
| Yellow              | 1            |                  | Yellow traffic light |
| Green               | 5            |                  | Green traffic light |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if you use user-defined arrays based on elementary data types in your library ~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="Arrays-of-elementary-data-types" class="block">

## Arrays of elementary data types

<!-- *** Change content here: *** -->

| Array name              | Base-type             | Lower bound | Upper bound |
|-------------------------|-----------------------|-------------|-------------|
| LIBID_ARR_W_1_8         | WORD                  | 1           | 8 |
| LIBID_ARR_DI_0_20       | DINT                  | 0           | 20 |
| LIBID_ARR_UI_0_20       | UINT                  | 0           | 20 |
| LIBID_ARR_R_0_25        | REAL                  | 0           | 25 |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if you use user-defined arrays based on project data types in your library ~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="Arrays-of-project-data-types" class="block">

## Arrays of project data types

<!-- *** Change content here: *** -->

| Array name              | Base-type                             | Lower bound | Upper bound |
|-------------------------|---------------------------------------|-------------|-------------|
| LIBID_ARR_Motor_0_6     | [LIBID_ST_Motor](#LIBID_ST_Motor)     | 0           | 6 |

</div>

</div>

<div class="pagebreak"> </div>