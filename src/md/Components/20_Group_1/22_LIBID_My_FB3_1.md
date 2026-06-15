<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- LIBID_FB3_1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Use FB name as id  *** -->
<div id="LIBID_My_FB3_1" class="main">

<!-- *** Change FB name here *** -->
## LIBID_My_FB3_1

**Type:** Function block

---

<!-- *** Describe your function block here: *** -->

### Description

This function block is used to ... <br>
The function block provides the following:
   
   * Item 1

   * Item 2

   * ...

<!-- *** Exemplary call(s) of your function block (one example is mandatory) *** -->

<div class=block>

### Example(s)

**Example in FBD:**

<img src="_images/image.png"> <!-- *** Change image name here *** -->

</div>

<!-- *** Provide notes for working with this function block *** -->

<div class=block>

<div class="noteheadertext"> Note </div>
<div class="notetext">

- All parameters can be negated. <br><br>
**Negation of formal parameters is not supported in safety-related code (SNOLD).**

- Function blocks must be instantiated. The instance name of the function block has to be declared in the 'Variables' table of the POU where the FB is going to be used. The instance name must be unique within the POU.

- ... 

</div>

</div>

<!-- *** Add/modify the input parameter descriptions here: *** -->

<div class=block>

### Inputs

| Variable               | Data type        | Description                                                         |
|------------------------|------------------|---------------------------------------------------------------------|
| IN_xActivate           | BOOL             | Function block activation |
| IN_bVar1               | BYTE             | Description of parameter bVar1 |

</div>

<!-- *** Add/modify the output parameter descriptions here: *** -->

<div class=block>

### Outputs

| Variable               | Data type        | Description                                                         |
|------------------------|------------------|---------------------------------------------------------------------|
| OUT_xActive            | BOOL             | Function block active status |
| OUT_xError             | BOOL             | Function block error status |
| OUT_wDiagCode          | WORD             | Diagnostic code. See the "Error codes" section for further information |
| OUT_wAddDiagCode       | WORD             | Additional diagnostic code. See the "Error codes" section for further information |
| OUT_rResult            | REAL             | Description of parameter rResult |

</div>

<!-- *** Add/modify the inout parameter descriptions here: *** -->

<div class=block>

### InOut

| Variable               | Data type                           | Description                                      |
|------------------------|-------------------------------------|--------------------------------------------------|
| INOUT_stData           | [LIBID_ST_Motor](#LIBID_ST_Motor)   | Motor data |

</div>

---

<!-- *** Add/modify dependencies (optional chapter -> delete chapter if there are no dependencies) *** -->

<div class=block>

### Dependencies 

**Global variables:** 

| Name               | Data type        | Description                                                             |
|--------------------|------------------|-------------------------------------------------------------------------|
| RTC                | RTC_TYPE         | Real-time clock (date and time of the PLC) |


**Library-internal and external functions and function blocks:**

| Name                                 | Source                   |  Description                                  |
|--------------------------------------|--------------------------|-----------------------------------------------|
| PTD_FB_Zones_1                       | PTD_ParcelTurning_1_3_1  | Outputs drive zone/position |
| [LIBID_My_FU1_1](#LIBID_My_FU1_1)    | Library-internal         | Short description of LIBID_My_FU1_1 |

</div>

---

<!-- *** Describe diagnostic codes within the first or second table *** -->

<div class=block>

### Error codes 

**Error codes for OUT_wDiagCode:**

| OUT_wDiagCode | Description                                                                                     |
|---------------|-------------------------------------------------------------------------------------------------|
| 16#0000       | Function block is deactivated |
| 16#8000       | Function block is in regular operation |
| ...           | ... |

</div>

<div class=block>

**Error codes for OUT_wDiagCode and OUT_wAddDiagCode:**

| OUT_wDiagCode | OUT_wAddDiagCode  | Description                                                                 |
|---------------|-------------------|-----------------------------------------------------------------------------|
| 16#0000       | 16#0000           | Function block is deactivated |
| 16#8000       | 16#0000           | Function block is in regular operation |
| 16#C110       |                   | An invalid input parameter has been detected|
| 16#C520       |                   | Error in an internally used function block |
| ...           | ...               | ... |

</div>

---

<!-- *** Section for additional information (optional) *** --> 

<div class=block>

### Additional information
     
My additional information ...

</div>

</div>