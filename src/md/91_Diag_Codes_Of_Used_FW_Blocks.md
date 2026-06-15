<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
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

<div class="pagebreak"> </div>