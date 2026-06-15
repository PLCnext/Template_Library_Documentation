<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
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

</div>