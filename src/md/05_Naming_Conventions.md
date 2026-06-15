<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
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

</div>