<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- General information ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="general_info" class="main">

# General information


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Library description ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class=block>

## Library description

<!-- *** Add a short description for your library here: *** -->

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Supported PLCnext Engineer versions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Provide information about the supported PLCnext Engineer versions: *** -->

## Supported PLCnext Engineer versions

Minimum required version: <!-- e.g. PLCnext Engineer 2020.0 LTS -->

Maximum supported version: <!-- e.g. PLCnext Engineer 2023.0.1 LTS -->

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Supported PLCs and firmware ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

## Supported PLCs and firmware

<!-- *** Add or change supported controls here: *** -->

| Product category         | Item designation     | Item no.      | Firmware      |
|--------------------------|----------------------| --------------|---------------|
| Controller               | AXC F 1152           | 1151412       | 2025.0 LTS, 2025.0.x |
| Controller               | AXC F 2152           | 2404267       | 2026.0 LTS, 2026.0.x |
| Safety controller        | RFC 4072S            | 1051328       | 2026.3        |


<div class="pagebreak"> </div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Safety-related danger messages - Do NOT change! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

## Safety-related danger messages

<!-- *** HINT: You can use the following snippets as templates in your documentation *** -->

In accordance with the applicable standards, the following hazard messages are used in this documentation.

<!-- Note box-->
<div class="noteheadertext"> Note </div>
<div class="notetext">Note texts give you additional information that may be useful when working with this library.</div><br>

<!-- Caution box-->
<div class="cautionheadertext"><img src="./_images/caution_label.gif"> Caution </div>
<div class="notetext">A caution text informs you about a minor hazard situation which, if not avoided, may result in minor or moderate injury.</div><br>

<!-- Warning box-->
<div class="warningheadertext"><img src="./_images/warning_label.gif"> Warning </div>
<div class="notetext">This is a warning text. It informs you about a hazardous situation which, if not avoided, could result in death or serious injury.</div><br>

<!-- Danger box-->
<div class="dangerheadertext"><img src="./_images/danger_label.gif"> Danger </div>
<div class="notetext">This text indicates a hazardous situation which, if not avoided, will result in death or serious injury.</div>

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Installation hints ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="installation" class="main">

# Installation hints

<!-- *** NO need to change content here *** -->

If you did not specify a different directory during library installation, all data in the MSI file will be unpacked to

**C:\\Users\\Public\\Documents\\Phoenix Contact Libraries\\PLCnext Engineer** <br>
(former: PC Worx Engineer)

Please copy the library data to the working library directory of PLCnext Engineer.

If you did not specify a different directory during PLCnext Engineer installation, the default PLCnext Engineer working library directory is

**C:\\Users\\Public\\Documents\\PLCnext Engineer\\Libraries** <br>
(former: PC Worx Engineer\\Libraries)

<br>

<div class="noteheadertext"> Note </div>
<div class="notetext">If HMI objects from this library are used in your project, make sure that English is configured as the default language: <br> <b>PLCnext Engineer > Extras > Options > Default Language Settings > en</b>
</div>

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Change notes ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="change_notes" class="main">

# Change notes

<!-- *** Change/add version information here (newest version at the top, oldest version at the bottom): *** -->

| Version  | Build date      | Tested with <br> PLCnext Engineer | **New**                  | **Fixed**            |
|----------|-----------------|-----------------------------------|--------------------------|----------------------|
| 2.0.0    | 2026-03-04      | 2026.0 LTS                        | LIBID_My_FU1_1, LIBID_My_FB4_1 | Data type mismatch in LIBID_My_FB1_1 | 
| 1.1.0    | 2025-09-10      | 2025.6                            | LIBID_My_FB1_1 with further diagnostic information | |
| 1.0.0    | 2025-02-26      | 2025.0 LTS                        | Initial release          | |


\* **Library version format:** Major.Minor.Patch

<!-- Use the following version format:

<MAJOR>.<MINOR>.<PATCH>

The numbers MAJOR, MINOR and PATCH are numbers between 1 and 1000.
E.g. "1.2.3" or "43.203.32".

Please use MAJOR version when you make incompatible API changes.  
E.g. 3.0.0 is not compatible to 2.4.6.

Increase the MINOR version when you add further functionalities in a backwards compatible manner.

Use the PATCH version for bug fixes. -->

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Naming conventions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="conventions" class="main">

# Naming conventions

<!-- *** Use the provided naming convention in your code, or update the right column to match your own naming rule -->
<!-- *** Please remove any table rows whose content is not relevant to your library *** -->

<div class=block>

## Prefixes for the usage types of variables (scope)

| Designation                               | PLCopen          | In this library |
|-------------------------------------------|:----------------:|:---------------:|
| Global flag                               | g                | \<LIBID\>_G |
| Process data input                        | i                | \<LIBID\>_I |
| Process data output                       | o                | \<LIBID\>_Q |
| Local variable                            | l                | none |
|                                           |                  |      |
| Function / function block input parameter | p                | IN |
| Function block output parameter           | p                | OUT |
| Function block in/out parameter           | p                | INOUT |
|                                           |                  |      |
| Program-global variable                   | n. d.            | \<LIBID\>_Gp |
| Instance-global input                     | n. d.            | \<LIBID\>_Ii |
| Instance-global output                    | n. d.            | \<LIBID\>_Qi |
|                                           |                  |      |
| Global HMI variable                       | n. d.            | \<LIBID\>_HMI |
| Local HMI variable                        | n. d.            | hmi |
|                                           |                  |      |
| Input of a method                         | n. d.            | mIN |
| Local variable of a method                | n. d.            | m |
|                                           |                  |      |
| IN Port (GDS)                             | n. d.            | INPORT |
| OUT Port (GDS)                            | n. d.            | OUTPORT |
|                                           |                  |      |
| Safe process data input                   | see table below  | \<LIBID\>_SI |
| Safe process data output                  | see table below  | \<LIBID\>_SQ |
| Variable for data exchange between safety and non-safety programming| see table below | \<LIBID\>_SX |
| Local safe variable                       | see table below  | s |
| Safe function block input                 | see table below  | SIN |
| Safe function block output                | see table below  | SOUT |

\* n. d. - not defined

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class=block>

## Prefixes for data types of variables

| Designation                     | PLCopen          | In this library |
|---------------------------------|:----------------:|:---------------:|
| BOOL                            | x                | x               |
| SINT                            | si               | si              |
| INT                             | i                | i               |
| DINT                            | di               | di              |
| LINT                            | li               | li              |
| USINT                           | usi              | usi             | 
| UINT                            | ui               | ui              |
| UDINT                           | udi              | udi             |
| ULINT                           | uli              | uli             |
| REAL                            | r                | r               |
| LREAL                           | lr               | lr              |
| TIME                            | tim              | t               |
| LTIME                           | ltim             | lt              |
| DATE                            | dt               | d               |  
| LDATE                           | ldt              | ldt             |
| TIME_OF_DAY / TOD               | tod              | td              |
| LTIME_OF_DAY / TOD              | ltod             | ltd             |
| DATE_AND_TIME / DT              | dt               | dt              |
| LDATE_AND_TIME / DT             | ldt              | ldt             |
| STRING                          | str              | str             |
| WSTRING                         | wstr             | wstr            |  
| BYTE                            | by               | b               |
| WORD                            | w                | w               |
| DWORD                           | dw               | dw              |
| LWORD                           | lw               | lw              |
| Safe data types                 | Data type prefix ends with: s; <br> Example: SAFEBOOL prefix is: xs | Differentiation is at  scope-level, not for data type |

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class=block>

## Suffixes for variables

| Designation                     | PLCopen          | In this library |
|---------------------------------|:----------------:|:---------------:|
| Normally closed                 | n. d.            | NC |

\* n. d. - not defined

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class=block>

## Exemplary variable names 

* Local boolean variable: xVarName
* Global flag of data type REAL: \<LIBID\>_G_rVarName
* Variable for a normally closed switch: \<LIBID\>_I_xSwitch_NC
* Local HMI variable of data type INT: hmi_iVarName
* Function block input of data type TIME: IN_tVarName 
* Safe local boolean variable: s_xVarName

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class=block>

## Prefixes for data type definitions

| Designation                     | PLCopen          | In this library |
|---------------------------------|:----------------:|:---------------:|
| Structure                       | ST               | \<LIBID\>_ST |
| Enumeration                     | E                | \<LIBID\>_E |
| Array                           | A                | \<LIBID\>_ARR |
| User-defined STRING (WSTRING)   | n. d.            | \<LIBID\>_(W)STR\_\<length\> |

\* n. d. - not defined

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class=block>

## Exemplary names for data types

* Structure: \<LIBID\>_ST_Name
* Enumeration: \<LIBID\>_E_Name
* Array with fields from 1 to 100 of data type DINT: \<LIBID\>_ARR_DI_1_100
* User-defined STRING with 45 characters: \<LIBID\>_STR_45

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class=block>

## Prefixes for component types

| Designation                     | PLCopen           | In this library |
|---------------------------------|:-----------------:|:---------------:|
| Program                         | PRG               | \<LIBID\>_PG |
| Function block                  | FB                | \<LIBID\>_FB |
| Function                        | FU                | \<LIBID\>_FU |
| Method                          | n. d.             | \<LIBID\>_MTH |
| SFC step name                   | n. d.             | \<LIBID\>_S |
| SFC action (worksheet)          | n. d.             | \<LIBID\>_A |
| SFC transition (worksheet)      | n. d.             | \<LIBID\>_T |
| SFC interlock (worksheet)       | n. d.             | \<LIBID\>_LCK |
| HMI page                        | n. d.             | \<LIBID\>_PAGE |
| HMI symbol                      | n. d.             | \<LIBID\>_SYM |

\* n. d. - not defined

</div>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class=block>

## Exemplary names for components

* Function block version 2: \<LIBID\>_FB_Name_2
* Method version 1: \<LIBID\>_MTH_Name_1
* HMI symbol version 3: \<LIBID\>_SYM_Name_3

</div>

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Library components ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="components" class="main">

# Library components

## Functions

<!-- *** List and describe functions here *** -->
<!-- *** Delete this chapter if there is no function in your library *** -->

| Name                                  | Version | Short description                      | Related products     |
|---------------------------------------|---------|----------------------------------------|----------------------|
|[LIBID_My_FU1_1](#LIBID_My_FU1_1)      | 1.0     |This function can be used to ...  Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. | / |

<!-- Naming of functions: 
	
Using several libraries within one project can cause problems if they do not have a unique ID. 

Choose a unique library ID and version number for function blocks and functions.
Insert the library ID before the name, the version number at the end.

Syntax: <Lib_ID>_<FU_Name>_<Version>

Example: PBCL_ConvIEEEToReal_1

<Lib_ID> = PBCL
<FU_Name> = ConvIEEEToReal
<Version> = 1

-->

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

## Function blocks

<!-- *** List and describe function blocks here *** -->
<!-- *** Delete this chapter if there is no function block in your library *** -->

| Name                                  | Version | Short description                      | Related products     |
|---------------------------------------|---------|----------------------------------------|----------------------|
|[LIBID_My_FB1_1](#LIBID_My_FB1_1)      | 1.0     |This function block can be used to ...  | AXL SE RS232 (item no. 1181787) |
|[LIBID_My_FB2_1](#LIBID_My_FB2_1)      | 1.0     |This function block can be used to ...  | / |   
|[LIBID_My_FB3_1](#LIBID_My_FB3_1)      | 1.0     |This function block can be used to ...  | AXL SE RS232 (item no. 1181787) |


<!-- Naming of function blocks: 
	
Using several libraries within one project can cause problems if they do not have a unique ID. 

Choose a unique library ID and version number for function blocks and functions.
Insert the library ID before the name, the version number at the end.

Syntax: <Lib_ID>_<FB_Name>_<Version>

Example: MB_RTU_Master_5

<Lib_ID> = MB
<FB_Name> = RTU_Master
<Version> = 5

-->

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** List and describe HMI symbols here *** -->
<!-- *** Delete this chapter if there is no symbol in your library *** -->

## HMI symbols

| Name                                   | Version | Short description                      | Related products    |
|----------------------------------------|---------|----------------------------------------|---------------------|
| [LIBID_SYM_Name_1](#LIBID_SYM_Name_1)  | 1.0     | This HMI symbol can be used to ...     | / |

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- LIBID_FU1_1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Use FU name as id *** -->
<div id="LIBID_My_FU1_1" class="main">

<!-- *** Change FU name here *** -->
# LIBID_My_FU1_1


**Type:** Function

---

<!-- *** Describe your function here: *** -->

## Description

This function is used to .... <br>
The function provides the following:
   
   * Item 1

   * Item 2

   * ...

<!-- *** Exemplary call(s) of your function (one example is mandatory) *** -->

<div class=block>

## Example(s)

**Example in FBD:**

<img src="_images/image.png"> <!-- *** Change image name here *** -->

</div>

<!-- *** Provide notes for working with this function *** -->

<div class=block>

<div class="noteheadertext"> Note </div>
<div class="notetext">

- All parameters can be negated. <br><br>
**Negation of formal parameters is not supported in safety-related code (SNOLD).**

- ... 

</div>

</div>

<!-- *** Add/change the input parameter descriptions here:  *** -->

<div class=block>

## Inputs

| Variable              | Data type        | Description                                                          |
|-----------------------|------------------|----------------------------------------------------------------------|
| IN_xActivate          | BOOL             | Function activation |
| IN_xVar1              | BOOL             | Description of parameter xVar1 |
| IN_xVar2              | BOOL             | Description of parameter xVar2 |

</div>

<!-- *** Add/change the output parameter description here: *** -->

<div class=block>

## Return value

| Data type        | Description                                                                                  |
|------------------|----------------------------------------------------------------------------------------------|
| BOOL             | Description of the return value |

</div>

---

<!-- *** Section for additional information (optional) *** --> 

<div class=block>

## Additional information
     
This function can be combined with the HMI symbol [LIBID_SYM_Name_1](#LIBID_SYM_Name_1).

</div>

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- LIBID_FB1_1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Use FB name as id  *** -->
<div id="LIBID_My_FB1_1" class="main">

<!-- *** Change FB name here *** -->
# LIBID_My_FB1_1

**Type:** Function block

---

<!-- *** Describe your function block here: *** -->

## Description

This function block is used to ... <br>
The function block provides the following:
   
   * Item 1

   * Item 2

   * ...

<!-- *** Exemplary call(s) of your function block (one example is mandatory) *** -->

<div class=block>

## Example(s)

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

<!-- *** Add/modify the input parameter descriptions here:  *** -->

<div class=block>

## Inputs

| Variable               | Data type        | Description                                                         |
|------------------------|------------------|---------------------------------------------------------------------|
| IN_xActivate           | BOOL             | Function block activation |
| IN_bVar1               | BYTE             | Description of parameter bVar1 |
| IN_eColor              | [LIBID_E_TrafficLight](#LIBID_E_TrafficLight) | Enumeration used for color selection |

</div>

<!-- *** Add/modify the output parameter descriptions here: *** -->

<div class=block>

## Outputs

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

## InOut

| Variable               | Data type                             | Description                                    |
|------------------------|---------------------------------------|------------------------------------------------|
| INOUT_stMotorData      | [LIBID_ST_Motor](#LIBID_ST_Motor)     | Motor data |
| INOUT_arrAllMotorData  | [LIBID_ARR_Motor_0_6](#Arrays-of-project-data-types) | Collected motor data of all motors |

</div>

---

<!-- *** Add/modify dependencies (optional chapter -> delete chapter if there are no dependencies) *** -->

<div class=block>

## Dependencies 

**Global variables:** 

| Name               | Data type        | Description                                                             |
|--------------------|------------------|-------------------------------------------------------------------------|
| RTC                | RTC_TYPE         | Real-time clock (date and time of the PLC) |


**Library-internal and external functions and function blocks:**

| Name                              | Source                   | Description                                      |
|-----------------------------------|--------------------------|--------------------------------------------------|
| PTD_FB_Zones_1                    | PTD_ParcelTurning_1_3_1  | Outputs drive zone/position |
| [LIBID_My_FU1_1](#LIBID_My_FU1_1) | Library-internal         | Short description of LIBID_My_FU1_1 |

</div>

---

<!-- *** Describe diagnostic codes within the first or second table *** -->

<div class=block>

## Error codes 

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
| 16#C110       |                   | An invalid input parameter has been detected |
| 16#C520       |                   | Error in an internally used function block |
| ...           | ...               | ... |

</div>

---

<!-- *** Section for additional information (optional) *** --> 

<div class=block>

## Additional information

This function block can be combined with the HMI symbol [LIBID_SYM_Name_1](#LIBID_SYM_Name_1).

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.  

</div>

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Group_1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


<!-- *** Use group name as id  *** -->
<div class="main" id="Group_1">

<!-- *** Change group name here: *** -->
# Group 1

In this group you can find function blocks for ... <!-- e.g. communication establishment --> 

<!-- *** List all function blocks (and/or functions) of this group *** -->

**List of function blocks**:

- [LIBID_My_FB2_1](#LIBID_My_FB2_1)

- [LIBID_My_FB3_1](#LIBID_My_FB3_1)

- ...

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- LIBID_FB2_1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Use FB name as id  *** -->
<div id="LIBID_My_FB2_1" class="main">

<!-- *** Change FB name here *** -->
## LIBID_My_FB2_1

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

<!-- Add the block notes here: -->

- All parameters can be negated. <br><br>
**Negation of formal parameters is not supported in safety-related code (SNOLD).**

- Function blocks must be instantiated. The instance name of the function block has to be declared in the 'Variables' table of the POU where the FB is going to be used. The instance name must be unique within the POU.

- ... 

</div>

</div>

<!-- *** Add/modify the input parameter descriptions here:  *** -->

<div class=block>

### Inputs

| Variable               | Data type        | Description                                                          |
|------------------------|------------------|----------------------------------------------------------------------|
| IN_xActivate           | BOOL             | Function block activation |
| IN_bVar1               | BYTE             | Description of parameter bVar1 |

</div>

<!-- *** Add/modify the output parameter descriptions here: *** -->

<div class=block>

### Outputs

| Variable               | Data type        | Description                                                          |
|------------------------|------------------|----------------------------------------------------------------------|
| OUT_xActive            | BOOL             | Function block active status |
| OUT_xError             | BOOL             | Function block error status |
| OUT_wDiagCode          | WORD             | Diagnostic code. See the "Error codes" section for further information |
| OUT_wAddDiagCode       | WORD             | Additional diagnostic code. See the "Error codes" section for further information |
| OUT_rResult            | REAL             | Description of parameter rResult |

</div>

<!-- *** Add/modify the inout parameter descriptions here: *** -->

<div class=block>

### InOut

| Variable               | Data type                            | Description                                     |
|------------------------|--------------------------------------|-------------------------------------------------|
| INOUT_stMotorData      | [LIBID_ST_Motor](#LIBID_ST_Motor)    | Motor data |

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
| 16#C110       |                   | An invalid input parameter has been detected |
| 16#C520       |                   | Error in an internally used function block |
| ...           | ...               | ... |

</div>

---

<!-- *** Section for additional information (optional) *** --> 

<div class=block>

### Additional information
     
This function block can be combined with the HMI symbol [LIBID_SYM_Name_1](#LIBID_SYM_Name_1).

</div>

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
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

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- HMI symbols ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="main" id="HMI_Symbols">

# HMI symbols

<!-- *** Please note that when providing HMI symbols with translations into other languages, the default language
<!--     must be set to English in PLCnext Engineer *** -->

In this group you can find HMI symbols. 

<!-- *** List all symbols here: *** -->

**List of HMI symbols**:

* [LIBID_SYM_Name_1](#LIBID_SYM_Name_1)

* ...

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- LIBID_SYM_Name_1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Use symbol name as id  *** -->
<div id="LIBID_SYM_Name_1" class="main">

<!-- *** Change symbol name here: *** -->
## LIBID_SYM_Name_1

**Type:** HMI symbol

---

<!-- *** Describe your HMI symbol here: *** -->

### Description

This HMI symbol is used to .... <br>

<!-- *** Exemplary instance of your symbol (one example is mandatory) *** -->

<div class=block>

### Example(s)

<img src="_images/LIBID_SYM_Name_1.png"> <!-- *** Change image name here *** -->

</div>

<!-- *** Provide notes for working with this symbol *** -->

<div class=block>

<div class="noteheadertext"> Note </div>
<div class="notetext">

- HMI symbols must be instantiated. An instance of an HMI symbol can be created either within another symbol or on an HMI page.

- A symbol may be instantiated multiple times; however, each instance must have a unique object ID.

- ... 
  
</div>

</div>


<!-- *** Add/modify the parameter descriptions here:  *** -->

<div class=block>

### HMI parameters

| Parameter name  | Type          | UDT             | Description                                  | **Input/output for symbol** |
|-----------------|---------------|-----------------|----------------------------------------------|-----------------------------|
| strName         | ANY_STRING    |                 | Device name to be displayed                  | IN                          |
| xMoveBwdReq     | BOOL          |                 | Request to drive backwards via button        | IN                          |
| xMoveFwdReq     | BOOL          |                 | Request to drive forward via button          | OUT                         |
| xRearPos_NC     | BOOL          |                 | Sensor at rear position (normally closed)    | OUT                         |
| xFrontPos_NC    | BOOL          |                 | Sensor at front position (normally closed)   | OUT                         |

</div>

---

<!-- *** Add/modify dependencies (optional chapter -> delete chapter if there are no dependencies) *** -->

<div class="block">

### Dependencies

This HMI symbol requires the instantiation of [LIBID_My_FB1_1](#LIBID_My_FB1_1).

</div>

---

<!-- *** Section for additional information (optional) *** --> 

<div class=block>

### Additional information
     
My additional information ...

</div>

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
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

<div class="pagebreak"> </div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Diag codes of used firmware blocks ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Keep this file, if you use firmware blocks in your library *** -->

<div id="fw_fb_diag_codes" class="main">

# Diag codes of used firmware function blocks

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if PDI_READ is used in your library, otherwise delete it ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="block">

## PDI_READ

ERROR = TRUE

| STATUS[0]  | STATUS[1]  | Meaning                                                                 |
|------------|------------|-------------------------------------------------------------------------|
| 16#09B0    | 16#000C    | The variable connected to RD_1 is invalid (no array or invalid array type). |
| 16#09B0    | 16#000B    | The array connected to RD_1 is too small to save the requested receive data. |
| 16#09B0    | 16#000E    | Timeout. No response to the sent PDI READ request received. |
| 16#09B0    | 16#000F    | An internal error has occurred. |

<br>
When receiving a negative confirmation as response to a PDI_READ request, the Axioline module directly copies the received error code (Error_Code and Add_Info) to STATUS[0] or STATUS[1]. These error codes are module-specific. For a description see the respective module documentation.
<br>

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if PDI_WRITE is used in your library ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


<div class="block">

## PDI_WRITE

ERROR = TRUE

| STATUS[0]  | STATUS[1]  | Meaning                                                                 |
|------------|------------|-------------------------------------------------------------------------|
| 16#09B0    | 16#000A    | The variable connected to SD_1 is invalid (no array or invalid array type). Connected to SD_1, greater than the maximum allowed length (245 bytes) or equal to zero. |
| 16#09B0    | 16#0009    | Invalid value at DATA_CNT input. The value is greater than the array size. |
| 16#09B0    | 16#000E    | Timeout. No response to the sent PDI WRITE request received. |
| 16#09B0    | 16#000F    | An internal error has occurred. |

<br>
When receiving a negative confirmation as response to a PDI_WRITE request, the Axioline module directly copies the received error code (Error_Code and Add_Info) to STATUS[0] or STATUS[1]. These error codes are module-specific. For a description see the respective module documentation.
<br>

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if RDREC is used in your library ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="block">

## RDREC

| Error code | Meaning                                                                              |
|------------|--------------------------------------------------------------------------------------|
| 16#0000    | No error occurred. |
| 16#F001    | Too many instances used. |
| 16#F002    | Error during initialization of the function block. |
| 16#F003    | Invalid ID. |
| 16#F004    | Invalid HANDLE/ID. |
| 16#F005    | Resources conflict. |
| 16#F006    | A function block internal task could not be generated. |
| 16#F007    | Too many instances used. |
| 16#F008    | Invalid type of a parameter. |
| 16#F009    | Invalid parameter value. |
| 16#F00A    | Invalid parameter. |
| 16#F00B    | Invalid length specified. |
| 16#F00C    | ID could not be created (too many IDs). |
| 16#F00D    | No entry found that matches the specified ID. |
| 16#F00F    | No further entries found. |
| 16#F010    | Entry in use. |
| 16#F011    | Alarm acknowledgment could not be done. |
| 16#F012    | Error reading the AR parameters (1st time). |
| 16#F013    | Negative acknowledgment received for the execution of a PROFINET service. |
| 16#F014    | Invalid length for parameter LEN/MLEN or/and RECORD data record too short. |
| 16#F015    | The service used to read the RECORD data record could not be run. |
| 16#F016    | The service used to write the RECORD data record could not be run. |
| 16#F017    | Service acknowledgment not received. |
| 16#F018    | Invalid INDEX used to access the RECORD data record of the IO device, for example, INDEX greater than 16#7FFF. |
| 16#F019    | Unknown command code. |
| 16#F01A    | Error starting the Application Relation (AR). |
| 16#F01B    | Error stopping the Application Relation (AR). |
| 16#F01C    | Notification of stopped Application Relation (AR) failed. |
| 16#F01D    | Setting the “Drive BF” flag failed. |
| 16#F01E    | Error reading the AR parameters (2nd time). |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if RDREC is used in your library ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="block">

## WRREC

| Error code | Meaning                                                                              |
|------------|--------------------------------------------------------------------------------------|
| 16#0000    | No error occurred. |
| 16#F001    | Too many instances used. |
| 16#F002    | Error during initialization of the function block. |
| 16#F003    | Invalid ID. |
| 16#F004    | Invalid HANDLE/ID. |
| 16#F005    | Resources conflict. |
| 16#F006    | A function block internal task could not be generated. |
| 16#F007    | Too many instances used. |
| 16#F008    | Invalid type of a parameter. |
| 16#F009    | Invalid parameter value. |
| 16#F00A    | Invalid parameter. |
| 16#F00B    | Invalid length specified. |
| 16#F00C    | ID could not be created (too many IDs). |
| 16#F00D    | No entry found that matches the specified ID. |
| 16#F00F    | No further entries found. |
| 16#F010    | Entry in use. |
| 16#F011    | Alarm acknowledgment could not be done. |
| 16#F012    | Error reading the AR parameters (1st time). |
| 16#F013    | Negative acknowledgment received for the execution of a PROFINET service. |
| 16#F014    | Invalid length for parameter LEN/MLEN or/and RECORD data record too short. |
| 16#F015    | The service used to read the RECORD data record could not be run. |
| 16#F016    | The service used to write the RECORD data record could not be run. |
| 16#F017    | Service acknowledgment not received. |
| 16#F018    | Invalid INDEX used to access the RECORD data record of the IO device, for example, INDEX greater than 16#7FFF. |
| 16#F019    | Unknown command code. |
| 16#F01A    | Error starting the Application Relation (AR). |
| 16#F01B    | Error stopping the Application Relation (AR). |
| 16#F01C    | Notification of stopped Application Relation (AR) failed. |
| 16#F01D    | Setting the “Drive BF” flag failed. |
| 16#F01E    | Error reading the AR parameters (2nd time). |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if TCP/UDP blocks are used in your library ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="block">
   
## TCP_SOCKET, TCP_READ, TCP_WRITE, UDP_SOCKET, UDP_READ, UDP_WRITE

ERROR = FALSE

| Error code | Meaning                                                                              |
|------------|--------------------------------------------------------------------------------------|
| 16#0000    | Situation is normal (no error). |
| 16#8000    | Socket is attempting to connect to the partner. |
| 16#8001    | Server is listening for a client. |
| 16#8002    | Server has rejected a client because the IP address and port number do not match. |
| 16#8003    | Not all data could be sent. Remaining data will be sent in the next cycle(s). |
| 16#8004    | Not all data received: Received length < Expected length |

</div>

<div class="block">

ERROR = TRUE


| Error code | Meaning                                                             | Error only for |
|------------|---------------------------------------------------------------------|----------------|
| 16#C001    | Socket creation failed. | |
| 16#C002    | IP has wrong format. | |
| 16#C003    | Memory allocation failed. | |
| 16#C100    | Unexpected error during connecting of a client to a server. | TCP/TLS_SOCKET |
| 16#C101    | Unexpected error during receive operation. | UDP/TCP/TLS_RECEIVE |
| 16#C102    | Unexpected error during send operation. | UDP/TCP/TLS_SEND |
| 16#C103    | Unexpected error during bind operation. | UDP_SOCKET |
| 16#C104    | Unexpected error during listen operation. | TCP/TLS_SOCKET |
| 16#C105    | Unexpected error during accept operation. | TCP/TLS_SOCKET |
| 16#C150    | The TLS parameterization of the TLS_SEND/TLS_RECEIVE function blocks is inconsistent with the TLS_SOCKET function block. This is the case when:<br><br>• TLS_SEND/TLS_RECEIVE require secure transmission/reception of data (`SEND_SECURE`/`RECEIVE_SECURE` = TRUE), but the socket is not yet initialized for TLS communication (`START_TLS` = FALSE).<br>• TLS_SEND/TLS_RECEIVE require insecure transmission/reception of data (`SEND_SECURE`/`RECEIVE_SECURE` = FALSE), but the socket is already initialized for TLS communication (`START_TLS` = TRUE). | TLS_~ |
| 16#C151    | An error regarding the `START_TLS` input of the `TLS_SOCKET` function block has occurred. `START_TLS` was set from TRUE to FALSE during opened TLS socket (`ACTIVE` = TRUE). | TLS_SOCKET |
| 16#C201    | There are too many open sockets in the underlying socket provider. | |
| 16#C202    | An operation on a nonblocking socket cannot be completed immediately. | |
| 16#C204    | The datagram is too long. | |
| 16#C205    | Only one use of an address is normally permitted.<br><br>In case of a TCP or TLS connection, this error code can be emitted when a rising edge is detected at the `ACTIVATE` input while the `ACTIVE` and `BUSY` outputs both are still not FALSE (i.e., a new connection is requested while the previous socket termination is not yet completed).<br>This error also occurs if the controller is switched to STOP and afterwards to the RUN state as this terminates established connections.<br>This error is also emitted if a TCP/TLS server shall listen to several clients. To avoid this error use the newer FB generation `TLS_~_2`. | |
| 16#C206    | The selected IP address is not valid in this context. | |
| 16#C207    | The connection was aborted by the .NET Framework or the underlying socket provider. | |
| 16#C208    | The connection was reset by the remote peer. | |
| 16#C210    | The application tried to send or receive data, and the socket is not connected. | |
| 16#C211    | No such host is known. The name is not an official host name or alias. | |
| 16#C212    | An internal error occurred with unclear reason. On controllers up to firmware 2019.3 one cause for this error is an empty CipherList. Another known cause is trying to send a UDP datagram to a broadcast address (255.255.255.255) using the UDP_SEND or UDP_SEND_2 function block. In case the error is thrown for the UDP_SEND_2 FB, ensure that the gateway in your IP configuration is set to a valid address (address 0.0.0.0 is invalid and treated as a missing gateway). (It is not required that the network contains a device with the configured gateway address.) | |
| 16#C213    | The remote host is actively refusing a connection. The service is not available on the remote host. | |
| 16#C214    | - Parameters like CipherList, TrustStoreName and IdentityStoreName are invalid or missing. <br> - An invalid port number was specified. | |
| 16#C215    | A blocking operation is in progress. | |
| 16#C216    | The overlapped operation was aborted due to the closure of the System.Net.Sockets.Socket. | |
| 16#C217    | The application has initiated an overlapped operation that cannot be completed immediately. | |
| 16#C218    | A blocking System.Net.Sockets.Socket call was canceled. | |
| 16#C219    | An attempt was made to access a System.Net.Sockets.Socket in a way that is forbidden by its access permissions. | |
| 16#C21A    | An invalid pointer address was detected by the underlying socket provider. | |
| 16#C21B    | A System.Net.Sockets.Socket operation was attempted on a non-socket. | |
| 16#C21C    | A required address was omitted from an operation on a System.Net.Sockets.Socket. | |
| 16#C21D    | An unknown, invalid, or unsupported option or level was used with a System.Net.Sockets.Socket. | |
| 16#C21E    | The protocol type is incorrect for this System.Net.Sockets.Socket. | |
| 16#C21F    | The protocol is not implemented or has not been configured. | |
| 16#C220    | The support for the specified socket type does not exist in this address family. | |
| 16#C221    | The address family is not supported by the protocol family. | |
| 16#C222    | The protocol family is not implemented or has not been configured. | |
| 16#C223    | The address family specified is not supported. This error is returned if the IPv6 address family was specified and the IPv6 stack is not installed on the local machine. This error is returned if the IPv4 address family was specified and the IPv4 stack is not installed on the local machine. | |
| 16#C224    | Network is down. | |
| 16#C225    | Network unreachable. | |
| 16#C226    | Network dropped connection on reset. | |
| 16#C227    | No free buffer space is available for a System.Net.Sockets.Socket operation. | |
| 16#C228    | A request to send or receive data was disallowed because the Socket has already been closed. | |
| 16#C229    | The connection attempt timed out, or the connected host has failed to respond. | |
| 16#C22A    | The operation failed because the remote host is down. | |
| 16#C22B    | There is no network route to the specified host. Could not connect to DEST_IP. | |
| 16#C22C    | Too many processes are using the underlying socket provider. | |
| 16#C22D    | The network subsystem is unavailable. | |
| 16#C22E    | The version of the underlying socket provider is out of range. | |
| 16#C22F    | The underlying socket provider has not been initialized. | |
| 16#C230    | A graceful shutdown is in progress. | |
| 16#C231    | The specified class was not found. | |
| 16#C232    | The name of the host could not be resolved. Try again later. | |
| 16#C233    | The error is unrecoverable or the requested database cannot be located. | |
| 16#C234    | The requested name or IP address was not found on the name server. | |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if FILE_OPEN blocks are used in your library ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="block">
   
## FILE_OPEN

| Error ID   | Meaning                                                                              |
|------------|--------------------------------------------------------------------------------------|
| 0          | No error information available. |
| 2          | The maximum number of files is already open. |
| 4          | The file is already open. |
| 5          | File is write protected or access denied. |
| 6          | File name not defined. |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if FILE_SEEK blocks are used in your library ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="block">
   
## FILE_SEEK

| Error ID   | Meaning                                                                              |
|------------|--------------------------------------------------------------------------------------|
| 0          | No error information available. |
| 1          | Invalid file handle. |
| 13         | Invalid positioning mode or position specified is before the beginning of the file. |
| 24         | Position could not be set. |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if FILE_READ blocks are used in your library ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="block">
   
## FILE_READ

| Error ID   | Meaning                                                                              |
|------------|--------------------------------------------------------------------------------------|
| 0          | No error information available. |
| 1          | Invalid file handle. |
| 10         | End of data reached. |
| 12         | The number of characters to be read is greater than the data buffer. |
| 22         | No data could be read. |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if FILE_CLOSE blocks are used in your library ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="block">
   
## FILE_CLOSE

| Error ID   | Meaning                                                                              |
|------------|--------------------------------------------------------------------------------------|
| 0          | No error information available. |
| 1          | Invalid file handle. |
| 20         | File could not be closed. |

</div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Keep this chapter, if STRING_TO_BUF blocks are used in your library ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div class="block">
   
## STRING_TO_BUF

| Status     | Meaning                                                                              |
|------------|--------------------------------------------------------------------------------------|
| 0          | The copy process has been finished correctly. |
| 1          | The VAR_IN_OUT descriptors used for the parameter SRC and BUFFER are invalid. This is an internal error. |
| 2          | The length of the source buffer does not fit. The size of bytes to be copied assigned in BUF_CNT is larger than the available size of the SRC. |
| 3          | The length of the destination buffer does not fit. The sum of the bytes to be copied assigned in BUF_CNT and the offset in the connected byte stream assigned in BUF_OFFS is larger than the size of the connected byte stream. |
| 4          | This data type is not supported. |
| 5          | The alignment does not fit to this data type. The size to be copied assigned in BUF_CNT must be divisible without remainder by the size of the data type. |
| 6          | The conversion INTEL/MOTOROLA (Little-/Big-Endian) has failed. |
| 7          | The string length does not fit. Additional checks are necessary for the data type string. |
| 8          | The destination buffer has a wrong data type. In some cases the data type is checked. This is described in the special chapter for each data type. |
| 9          | The offset value is not correct. In some cases the offset is checked. This is described in the special chapter for each data type. |
| 10         | The BUF_CNT does not fit. In some cases the size to be copied is checked. |
| 11         | The addresses of the source and the destination are the same. |

</div>

</div>

<div class="pagebreak"> </div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Third-party licenses ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Keep this file, if you use third-party code in your library *** -->

<div id="licenses" class="main">

# Third-party licenses

<!-- *** According to the PLCnext Store Info Center, all third‑party licenses must be provided in one single 
         file named "license.txt". This file must be uploaded to the PLCnext Store under "Documents". *** -->


<!-- *** Introduction text - Do NOT change *** -->

This software makes use of third-party packages with different licenses. 

The software packages and the licenses are listed in this chapter.

<!-- *** Change table content here: *** -->

| Software (package) name        | License type                |
|--------------------------------|---------------------------- |
| Software A                     | MIT license |
| Software B                     | BSD license |
| Software C                     | GPL license |


The corresponding license texts are available in the text file **license.txt** on the library page within the PLCnext Store, under the "Documents" section.

</div>

<div class="pagebreak"> </div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~ Keep this file in the case of known issues here ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="known_issues" class="main">

# Known issues

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Startup example(s) ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="example" class="main">

# Startup example(s)

<!-- *** Adjust list after introduction sentence: *** -->

For the startup instructions of the library function blocks, please find the following examples:

* LIBID_EXA_Name.pcwex
* ...

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Description of example 1 -> Adjust content: *** -->

<div class="block">

## Description of LIBID_EXA_Name.pcwex

This startup example demonstrates ...

**Required hardware:**

| Item designation                | Item no.      | Firmware version |
|---------------------------------| --------------|------------------|
| AXC F 2152                      |  2404267      | 2026.0 LTS |
| AXL SE RS232                    |  1181787      ||

**PLCnext Engineer version:** 2026.0 LTS

</div>

<div class="block">

For starting the ExampleMachine function block, *xStart* input must be set to TRUE.

<img src="./_images/startup_example.png"> <!-- Screenshot with online values -->

For the source code, please open the associated PLCnext Engineer project.

</div>

<div class="pagebreak"> </div>

---

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!-- *** Description of example 2 -> Adjust content: *** -->

<div class="block">

## Description of ...

This startup example demonstrates ...

**Required hardware:**

| Item designation                | Item no.      | Firmware version |
|---------------------------------| --------------|------------------|
| AXC F 2152                      |  2404267      | 2026.0 LTS |
| AXL SE RS232                    |  1181787      ||

**PLCnext Engineer version:** 2026.0 LTS

</div>

<div class="block">

For starting the ExampleMachine function block, *xStart* input must be set to TRUE.

<img src="./_images/startup_example.png"> <!-- Screenshot with online values -->

For the source code, please open the associated PLCnext Engineer project.

</div>

<div class="pagebreak"> </div>

</div><!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- Support ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<div id="support" class="main">

# Support

<!-- *** Change company name and email address here *** -->

For technical support, please contact: Company_Name 

E-Mail: support@your-company.com

<!-- For technical support please contact your local PHOENIX CONTACT agency <br>
at [https://www.phoenixcontact.com](https://www.phoenixcontact.com)  <br> -->


<!-- *** Keep the following text *** -->

**In case of a support request, we need:**

- Development system with:
    - Name (e.g., PC Worx, PLCnext Engineer)
    - Version (e.g., PLCnext Engineer 2022.0.1 LTS)

- Bus structure / plant including all articles with
    - Name
    - Order number
    - Firmware version
    - External components

- Used libraries with:
    - Name
    - Version (e.g., IOL_Basic_7)

<br>

</div>