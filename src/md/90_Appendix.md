<div class="main">

# <a class="link" name="Appendix">Appendix</a>

## <a class="link" name="FW_blocks_diag_codes">Diag codes of used firmware function blocks</a>

<!-- *** Keep this chapter, if PDI_READ is used in your library *************** -->
<!-- *** Delete this table chapter, if PDI_READ is not used in your library *** -->

<div class="block">

### PDI_READ

for PLCnext Engineer

ERROR = TRUE

<table>
   <tr>
      <th class="border">STATUS[0]</th>
      <th class="border">STATUS[1]</th>
      <th class="border">Meaning</th>
   </tr>
   <tr>
      <td class="border">16#09B0</td>
      <td class="border">16#000C</td>
      <td class="border">The variable connected to RD_1 is invalid (no array or invalid array type).</td>
   </tr>
   <tr>
      <td class="border">16#09B0</td>
      <td class="border">16#000B</td>
      <td class="border">The array connected to RD_1 is too small to save the requested receive data.</td>
   </tr>
   <tr>
      <td class="border">16#09B0</td>
      <td class="border">16#000E</td>
      <td class="border">Timeout. No response to the sent PDI READ request received.</td>
   </tr>
   <tr>
      <td class="border">16#09B0</td>
      <td class="border">16#000F</td>
      <td class="border">An internal error has occurred.</td>
</table>

When receiving a negative confirmation as response to a PDI_READ request, the Axioline module directly copies the received error code (Error_Code and Add_Info) to STATUS[0] or STATUS[1]. These error codes are module-specific. For a description see the respective module documentation.

</div>

<!-- *** Keep this chapter, if PDI_WRITE is used in your library *************** -->
<!-- *** Delete this table chapter, if PDI_WRITE is not used in your library *** -->

<div class="block">

### PDI_WRITE

for PLCnext Engineer

ERROR = TRUE

<table>
   <tr>
      <th class="border">STATUS[0]</th>
      <th class="border">STATUS[1]</th>
      <th class="border">Meaning</th>
   </tr>
   <tr>
      <td class="border">16#09B0</td>
      <td class="border">16#000A</td>
      <td class="border">The variable connected to SD_1 is invalid (no array or invalid array type). connected to SD_1, greater than the maximum allowed length (245 bytes) or equal to zero.</td>
   </tr>
   <tr>
      <td class="border">16#09B0</td>
      <td class="border">16#0009</td>
      <td class="border">Invalid value at DATA_CNT input. The value is either greater than the array</td>
   </tr>
   <tr>
      <td class="border">16#09B0</td>
      <td class="border">16#000E</td>
      <td class="border">Timeout. No response to the sent PDI WRITE request received.</td>
   </tr>
   <tr>
      <td class="border">16#09B0</td>
      <td class="border">16#000F</td>
      <td class="border">An internal error has occurred.</td>
</table>

When receiving a negative confirmation as response to a PDI_WRITE request, the Axioline module directly copies the received error code (Error_Code and Add_Info) to STATUS[0] or STATUS[1]. These error codes are module-specific. For a description see the respective module documentation.

</div>

<!-- *** Keep this chapter, if RDREC is used in your library ********* -->
<!-- *** Delete this chapter, if RDREC is not used in your library *** -->

<div class="block">

### RDREC

for PLCnext Engineer

<table>
   <tr>
      <th class="border">Error code</th>
      <th class="border">Meaning</th>
   </tr>
   <tr>
     <td class="border">16#0000</td>
     <td class="border">No error occurred.</td>
   </tr>
   <tr>
     <td class="border">16#F001</td>
     <td class="border">Too many instances used.</td>
   </tr>
   <tr>
     <td class="border">16#F002</td>
     <td class="border">Error during initialization of the function block.</td>
   </tr>
   <tr>
     <td class="border">16#F003</td>
     <td class="border">Invalid ID.</td>
   </tr>
   <tr>
     <td class="border">16#F004</td>
     <td class="border">Invalid HANDLE/ID.</td>
   </tr>
   <tr>
     <td class="border">16#F005</td>
     <td class="border">Resources conflict.</td>
   </tr>
   <tr>
     <td class="border">16#F006</td>
     <td class="border">A function block internal task could not be generated.</td>
   </tr>
   <tr>
     <td class="border">16#F007</td>
     <td class="border">Too many instances used.</td>
   </tr>
   <tr>
     <td class="border">16#F008</td>
     <td class="border">Invalid type of a parameter.</td>
   </tr>
   <tr>
     <td class="border">16#F009</td>
     <td class="border">Invalid parameter value.</td>
   </tr>
   <tr>
     <td class="border">16#F00A</td>
     <td class="border">Unallowed parameter.</td>
   </tr>
   <tr>
     <td class="border">16#F00B</td>
     <td class="border">Invalid length specified.</td>
   </tr>
   <tr>
     <td class="border">16#F00C</td>
     <td class="border">ID could not be created (too many IDs).</td>
   </tr>
   <tr>
     <td class="border">16#F00D</td>
     <td class="border">No entry found that matches the specified ID.</td>
   </tr>
   <tr>
     <td class="border">16#F00F</td>
     <td class="border">No further entries found.</td>
   </tr>
   <tr>
     <td class="border">16#F010</td>
     <td class="border">Entry in use.</td>
   </tr>
   <tr>
     <td class="border">16#F011</td>
     <td class="border">Alarm acknowledgement could not be done.</td>
   </tr>
   <tr>
     <td class="border">16#F012</td>
     <td class="border">Error reading the AR parameters (1st time).</td>
   </tr>
   <tr>
     <td class="border">16#F013</td>
     <td class="border">Negative acknowledgement received for the execution of a PROFINET service.</td>
   </tr>
   <tr>
     <td class="border">16#F014</td>
     <td class="border">Invalid length for parameter LEN/MLEN or/and RECORD data record too short.</td>
   </tr>
   <tr>
     <td class="border">16#F015</td>
     <td class="border">The service used to read the RECORD data record could not be run.</td>
   </tr>
   <tr>
     <td class="border">16#F016</td>
     <td class="border">The service used to write the RECORD data record could not be run.</td>
   </tr>
   <tr>
     <td class="border">16#F017</td>
     <td class="border">Service acknowledgement not received.</td>
   </tr>
   <tr>
     <td class="border">16#F018</td>
     <td class="border">Invalid INDEX used to access the RECORD data record of the IO device, for example, INDEX greater than 16#7FFF.</td>
   </tr>
   <tr>
     <td class="border">16#F019</td>
     <td class="border">Unknown command code.</td>
   </tr>
   <tr>
     <td class="border">16#F01A</td>
     <td class="border">Error starting the Application Relation (AR).</td>
   </tr>
   <tr>
     <td class="border">16#F01B</td>
     <td class="border">Error stopping the Application Relation (AR).</td>
   </tr>
   <tr>
     <td class="border">16#F01C</td>
     <td class="border">Notification of stopped Application Relation (AR) failed.</td>
   </tr>
   <tr>
     <td class="border">16#F01D</td>
     <td class="border">Setting the “Drive BF” flag failed.</td>
   </tr>
   <tr>
     <td class="border">16#F01E</td>
     <td class="border">Error reading the AR parameters (2nd time).</td>
   </tr>
</table>

</div>

<!-- *** Keep this chapter, if RDREC is used in your library ********* -->
<!-- *** Delete this chapter, if RDREC is not used in your library *** -->

<div class="block">

### WRREC

for PLCnext Engineer

<table>
   <tr>
      <th class="border">Error code</th>
      <th class="border">Meaning</th>
   </tr>
   <tr>
     <td class="border">16#0000</td>
     <td class="border">No error occurred.</td>
   </tr>
   <tr>
     <td class="border">16#F001</td>
     <td class="border">Too many instances used.</td>
   </tr>
   <tr>
     <td class="border">16#F002</td>
     <td class="border">Error during initialization of the function block.</td>
   </tr>
   <tr>
     <td class="border">16#F003</td>
     <td class="border">Invalid ID.</td>
   </tr>
   <tr>
     <td class="border">16#F004</td>
     <td class="border">Invalid HANDLE/ID.</td>
   </tr>
   <tr>
     <td class="border">16#F005</td>
     <td class="border">Resources conflict.</td>
   </tr>
   <tr>
     <td class="border">16#F006</td>
     <td class="border">A function block internal task could not be generated.</td>
   </tr>
   <tr>
     <td class="border">16#F007</td>
     <td class="border">Too many instances used.</td>
   </tr>
   <tr>
     <td class="border">16#F008</td>
     <td class="border">Invalid type of a parameter.</td>
   </tr>
   <tr>
     <td class="border">16#F009</td>
     <td class="border">Invalid parameter value.</td>
   </tr>
   <tr>
     <td class="border">16#F00A</td>
     <td class="border">Unallowed parameter.</td>
   </tr>
   <tr>
     <td class="border">16#F00B</td>
     <td class="border">Invalid length specified.</td>
   </tr>
   <tr>
     <td class="border">16#F00C</td>
     <td class="border">ID could not be created (too many IDs).</td>
   </tr>
   <tr>
     <td class="border">16#F00D</td>
     <td class="border">No entry found that matches the specified ID.</td>
   </tr>
   <tr>
     <td class="border">16#F00F</td>
     <td class="border">No further entries found.</td>
   </tr>
   <tr>
     <td class="border">16#F010</td>
     <td class="border">Entry in use.</td>
   </tr>
   <tr>
     <td class="border">16#F011</td>
     <td class="border">Alarm acknowledgement could not be done.</td>
   </tr>
   <tr>
     <td class="border">16#F012</td>
     <td class="border">Error reading the AR parameters (1st time).</td>
   </tr>
   <tr>
     <td class="border">16#F013</td>
     <td class="border">Negative acknowledgement received for the execution of a PROFINET service.</td>
   </tr>
   <tr>
     <td class="border">16#F014</td>
     <td class="border">Invalid length for parameter LEN/MLEN or/and RECORD data record too short.</td>
   </tr>
   <tr>
     <td class="border">16#F015</td>
     <td class="border">The service used to read the RECORD data record could not be run.</td>
   </tr>
   <tr>
     <td class="border">16#F016</td>
     <td class="border">The service used to write the RECORD data record could not be run.</td>
   </tr>
   <tr>
     <td class="border">16#F017</td>
     <td class="border">Service acknowledgement not received.</td>
   </tr>
   <tr>
     <td class="border">16#F018</td>
     <td class="border">Invalid INDEX used to access the RECORD data record of the IO device, for example, INDEX greater than 16#7FFF.</td>
   </tr>
   <tr>
     <td class="border">16#F019</td>
     <td class="border">Unknown command code.</td> 
   </tr>
   <tr>
     <td class="border">16#F01A</td>
     <td class="border">Error starting the Application Relation (AR).</td>
   </tr>
   <tr>
     <td class="border">16#F01B</td>
     <td class="border">Error stopping the Application Relation (AR).</td>
   </tr>
   <tr>
     <td class="border">16#F01C</td>
     <td class="border">Notification of stopped Application Relation (AR) failed.</td>
   </tr>
   <tr>
     <td class="border">16#F01D</td>
     <td class="border">Setting the “Drive BF” flag failed.</td>
   </tr>
   <tr>
     <td class="border">16#F01E</td>
     <td class="border">Error reading the AR parameters (2nd time).</td>
   </tr>
</table>  

</div>

<!-- *** Keep this chapter, if TCP/UDP blocks are used in your library ******* -->
<!-- *** Delete this chapter, if no TCP/UDP block is  used in your library *** -->

<div class="block">
   
### TCP_SOCKET, TCP_READ, TCP_WRITE, UDP_SOCKET,UDP_READ, UDP_WRITE

ERROR = FALSE

<table>
   <tr>
      <th class="border">Error code</th>
      <th class="border">Meaning</th>
   </tr>
   <tr>
     <td class="border">16#0000</td>
     <td class="border">Situation is normal (no error).</td>
   </tr>
   <tr>
     <td class="border">16#8000</td>
     <td class="border">Socket is trying to connect the partner.</td>
   </tr>
    <tr>
     <td class="border">16#8001</td>
     <td class="border">Server is listening for a client.</td>
   </tr>
    <tr>
     <td class="border">16#8002</td>
     <td class="border">Server has rejected a client because the IP address and port number do not match.</td>
   </tr>
    <tr>
     <td class="border">16#8003</td>
     <td class="border">Not all data could be sent. Remaining data will be sent in the next cycle(s).</td>
   </tr>
    <tr>
     <td class="border">16#8004</td>
     <td class="border">Not all data received: Received length < Expected length</td>
   </tr>
</table>

</div>

<div class="block">

ERROR = TRUE

<table>
    <tr>
      <th class="border">Error code</th>
      <th class="border">Meaning</th>
      <th class="border">Error only for</th>
    </tr>
    <tr>
     <td class="border">16#C001</td>
     <td class="border">Socket creation failed.</td>
     <td class="border"></td>
    </tr>
    <tr>
     <td class="border">16#C002</td>
     <td class="border">IP has wrong format.</td>
     <td class="border"></td>
    </tr>
    <tr>
     <td class="border">16#C003</td>
     <td class="border">Memory allocation failed.</td>
     <td class="border"></td>
    </tr>
    <tr>
     <td class="border">16#C100</td>
     <td class="border">Unexpected error during connecting of a client to a server.</td>
     <td class="border">TCP/TLS_SOCKET</td>
    </tr>
    <tr>
     <td class="border">16#C101</td>
     <td class="border">Unexpected error during receive operation.</td>
     <td class="border">UDP/TCP/TLS_RECEIVE</td>
    </tr>
    <tr>
     <td class="border">16#C102</td>
     <td class="border">Unexpected error during send operation.</td>
     <td class="border">UDP/TCP/TLS_SEND</td>
   </tr>
   <tr>
     <td class="border">16#C103</td>
     <td class="border">Unexpected error during bind operation.</td>
     <td class="border">UDP_SOCKET</td>
   </tr>
   <tr>
     <td class="border">16#C104</td>
     <td class="border">Unexpected error during listen operation.</td>
     <td class="border">TCP/TLS_SOCKET</td>
   </tr>
   <tr>
     <td class="border">16#C105</td>
     <td class="border">Unexpected error during accept operation.</td>
     <td class="border">TCP/TLS_SOCKET</td>
   </tr>
   <tr>
     <td class="border">16#C150</td>
     <td class="border">The TLS parameterization of the TLS_SEND/TLS_RECEIVE function blocks is inconsistent with the TLS_SOCKET function block. This is the case when:</br>

  * TLS_SEND/TLS_RECEIVE require secure transmission/reception of data (SEND_SECURE/RECEIVE_SECURE input = TRUE), but the socket is not yet initialized for TLS communication (START_TLS input of TLS_SOCKET is FALSE).
  * TLS_SEND/TLS_RECEIVE require insecure transmission/reception of data (SEND_SECURE/RECEIVE_SECURE input = FALSE), but the socket is already initialized for TLS communication (START_TLS input of TLS_SOCKET is TRUE).</td>
     <td class="border">TLS_*</td>
   </tr>
   <tr>
     <td class="border">16#C151</td>
     <td class="border">An error regarding the START_TLS input of the TLS_SOCKET function block has occurred. START_TLS was set from TRUE to FALSE during opened TLS socket (ACTIVE input = TRUE). </td>
     <td class="border">TLS_SOCKET</td>     
   </tr>
   <tr>
     <td class="border">16#C201</td>
     <td class="border">There are too many open sockets in the underlying socket provider.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C202</td>
     <td class="border">An operation on a nonblocking socket cannot be completed immediately.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C204</td>
     <td class="border">The datagram is too long.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C205</td>
     <td class="border">Only one use of an address is normally permitted. </br>
    In case of a TCP or TLS connection, this error code can be emitted when a rising edge is detected at the ACTIVATE input while the ACTIVE and BUSY outputs both are still not FALSE (i.e., a new connection is requested while the previous socket termination is not yet completed). The error also occurs if the controller is switched to STOP and afterwards to the RUN state as this terminates established connections. </br>
  	This error is also emitted if a TCP/TLS server shall listen to several clients. To avoid this error use the newer FB generation TLS_*_2.
     </td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C206</td>
     <td class="border">The selected IP address is not valid in this context.</td>
     <td class="border"></td>
   </tr>
      <tr>
     <td class="border">16#C207</td>
     <td class="border">The connection was aborted by the .NET Framework or the underlying socket provider.</td>
     <td class="border"></td>
   </tr>
   </tr>
      <tr>
     <td class="border">16#C208</td>
     <td class="border">The connection was reset by the remote peer.</td>
     <td class="border"></td>
   </tr>
   </tr>
   <tr>
     <td class="border">16#C210</td>
     <td class="border">The application tried to send or receive data, and the socket is not connected.</td>
     <td class="border"></td>
   </tr>  
   <tr>
     <td class="border">16#C211</td>
     <td class="border">No such host is known. The name is not an official host name or alias.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C212</td>
     <td class="border">An internal error occurred with unclear reason. On controllers up to firmware 2019.3 one cause for this error is an empty CipherList. </br>
    Another known cause is trying to send a UDP datagram to a broadcast address (255.255.255.255) using the UDP_SEND or UDP_SEND_2 function block. </br></br>
    In case the error is thrown for the UDP_SEND_2 FB, ensure that the gateway in your IP configuration is set to a valid address (address 0.0.0.0 is invalid and treated as a missing gateway). (It is not required that the network contains a device with the configured gateway address.)</td>
     <td class="border"></td>
   </tr>  
   <tr>
     <td class="border">16#C213</td>
     <td class="border">The remote host is actively refusing a connection. The service is not available on the remote host.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C214</td>
     <td class="border"> - Parameters like CipherList, TrustStoreName and IdentityStoreName are invalid or missing. </br>
    - An invalid port number was specified.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C215</td>
     <td class="border"> A blocking operation is in progress.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C216</td>
     <td class="border">The overlapped operation was aborted due to the closure of the System.Net.Sockets.Socket.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C217</td>
     <td class="border">The application has initiated an overlapped operation that cannot be completed immediately.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C218</td>
     <td class="border">A blocking System.Net.Sockets.Socket call was canceled.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C219</td>
     <td class="border">An attempt was made to access a System.Net.Sockets.Socket in a way that is forbidden by its access permissions.</td>
     <td class="border"></td>
   </tr> 
   <tr>
     <td class="border">16#C21A</td>
     <td class="border">An invalid pointer address was detected by the underlying socket provider.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C21B</td>
     <td class="border">A System.Net.Sockets.Socket operation was attempted on a non-socket.</td>
     <td class="border"></td>
   </tr>   
   <tr>
     <td class="border">16#C21C</td>
     <td class="border">A required address was omitted from an operation on a System.Net.Sockets.Socket.</td>
     <td class="border"></td>
   </tr>     
   <tr>
     <td class="border">16#C21D</td>
     <td class="border">An unknown, invalid, or unsupported option or level was used with a System.Net.Sockets.Socket.</td>
     <td class="border"></td>
   </tr> 
   <tr>
     <td class="border">16#C21E</td>
     <td class="border">The protocol type is incorrect for this System.Net.Sockets.Socket.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C21F</td>
     <td class="border">The protocol is not implemented or has not been configured.</td>
     <td class="border"></td>
   </tr> 
   <tr>
     <td class="border">16#C220</td>
     <td class="border">The support for the specified socket type does not exist in this address family.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C221</td>
     <td class="border">The address family is not supported by the protocol family.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C222</td>
     <td class="border">The protocol family is not implemented or has not been configured.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C223</td>
     <td class="border"> The address family specified is not supported. This error is returned if the IPv6 address family was specified and the IPv6 stack is not installed on the local machine. This error is returned if the IPv4 address family was specified and the IPv4 stack is not installed on the local
     machine.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C224</td>
     <td class="border">Network is down.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C225</td>
     <td class="border">Network unreachable.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C226</td>
     <td class="border">Network dropped connection on reset.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C227</td>
     <td class="border">No free buffer space is available for a System.Net.Sockets.Socket operation.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C228</td>
     <td class="border">A request to send or receive data was disallowed because the Socket has already been closed.</td>
     <td class="border"></td>
   </tr>
   <tr>
     <td class="border">16#C229</td>
     <td class="border">The connection attempt timed out, or the connected host has failed to respond.</td>
     <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C22A</td>
    <td class="border">The operation failed because the remote host is down.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C22B</td>
    <td class="border">There is no network route to the specified host. Could not connect to DEST_IP.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C22C</td>
    <td class="border">Too many processes are using the underlying socket provider.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C22D</td>
    <td class="border">The network subsystem is unavailable.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C22E</td>
    <td class="border">The version of the underlying socket provider is out of range.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C22F</td>
    <td class="border">The underlying socket provider has not been initialized.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C230</td>
    <td class="border">A graceful shutdown is in progress.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C231</td>
    <td class="border">The specified class was not found.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C232</td>
    <td class="border">The name of the host could not be resolved. Try again later.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C233</td>
    <td class="border">The error is unrecoverable or the requested database cannot be located.</td>
    <td class="border"></td>
   </tr>
   <tr>
    <td class="border">16#C234</td>
    <td class="border">The requested name or IP address was not found on the name server.</td>
    <td class="border"></td>
   </tr>
</table>

</div>

<!-- *** Keep this chapter, if FILE_OPEN blocks are used in your library ******* -->
<!-- *** Delete this chapter, if no FILE_OPEN block is  used in your library *** -->

<div class="block">
   
### FILE_OPEN

<table>
   <tr>
      <th class="border">Error ID</th>
      <th class="border">Meaning</th>
   </tr>
   <tr>
    <td class="border">0</td>
    <td class="border">No error information available.</td>
   </tr>
   <tr>
    <td class="border">2</td>
    <td class="border">The maximum number of files is already opened.</td>
   </tr>
   <tr>
    <td class="border">4</td>
    <td class="border">The file is already opened.</td>
   </tr>
   <tr>
    <td class="border">5</td>
    <td class="border">File is write protected or access denied.</td>
   </tr>
   <tr>
    <td class="border">6</td>
    <td class="border">File name not defined.</td>
   </tr>
</table>

</div>

<!-- *** Keep this chapter, if FILE_SEEK blocks are used in your library ******* -->
<!-- *** Delete this chapter, if no FILE_SEEK block is  used in your library *** -->

<div class="block">
   
### FILE_SEEK

<table>
   <tr>
      <th class="border">Error ID</th>
      <th class="border">Meaning</th>
   </tr>
   <tr>
    <td class="border">0</td>
    <td class="border">No error information available.</td>
   </tr>
   <tr>
    <td class="border">1</td>
    <td class="border">Invalid file handle.</td>
   </tr>
   <tr>
    <td class="border">13</td>
    <td class="border">Invalid positioning mode or position specified is before the beginning of the file.</td>
   </tr>
   <tr>
    <td class="border">24</td>
    <td class="border">Position could not be set.</td>
   </tr>
</table>

</div>

<!-- *** Keep this chapter, if FILE_READ blocks are used in your library ******* -->
<!-- *** Delete this chapter, if no FILE_READ block is  used in your library *** -->

<div class="block">
   
### FILE_READ

<table>
   <tr>
      <th class="border">Error ID</th>
      <th class="border">Meaning</th>
   </tr>
   <tr>
    <td class="border">0</td>
    <td class="border">No error information available.</td>
   </tr>
   <tr>
    <td class="border">1</td>
    <td class="border">Invalid file handle.</td>
   </tr>
   <tr>
    <td class="border">10</td>
    <td class="border">End of data reached.</td>
   </tr>
   <tr>
    <td class="border">12</td>
    <td class="border">The number of characters to be read is greater than the data buffer.</td>
   </tr>
   <tr>
    <td class="border">22</td>
    <td class="border">No data could be read.</td>
   </tr>
</table>

</div>

<!-- *** Keep this chapter, if FILE_CLOSE blocks are used in your library ******* -->
<!-- *** Delete this chapter, if no FILE_CLOSE block is  used in your library *** -->

<div class="block">
   
### FILE_CLOSE

<table>
   <tr>
      <th class="border">Error ID</th>
      <th class="border">Meaning</th>
   </tr>
   <tr>
    <td class="border">0</td>
    <td class="border">No error information available.</td>
   </tr>
   <tr>
    <td class="border">1</td>
    <td class="border">Invalid file handle.</td>
   </tr>
   <tr>
    <td class="border">20</td>
    <td class="border">File could not be closed.</td>
   </tr>
</table>

</div>

<!-- *** Keep this chapter, if STRING_TO_BUF blocks are used in your library ******* -->
<!-- *** Delete this chapter, if no STRING_TO_BUF block is  used in your library *** -->

<div class="block">
   
### STRING_TO_BUF

<table>
   <tr>
    <th class="border">Status number</th>
    <th class="border">Meaning</th>
   </tr>
   <tr>
    <td class="border">0</td>
    <td class="border">The copy process has been finished correctly.</td>
   </tr>
   <tr>
    <td class="border">1</td>
    <td class="border">The VAR_IN_OUT descriptors used for the parameter SRC and BUFFER are invalid. This is an internal error.</td>
   </tr>
   <tr>
    <td class="border">2</td>
    <td class="border">The length of the source buffer does not fit. The size of bytes to be copied assigned in BUF_CNT is larger than the available size of the SRC.</td>
   </tr>
   <tr>
    <td class="border">3</td>
    <td class="border">The length of the destination buffer does not fit. The sum of the bytes to be copied assigned in BUF_CNT and the offset in the connected byte stream assigned in BUF_OFFS is larger than the size of the connected byte stream.</td>
   </tr>
   <tr>
    <td class="border">4</td>
    <td class="border">This data type is not supported.</td>
   </tr>
   <tr>
    <td class="border">5</td>
    <td class="border">The alignment does not fit to this data type. The size to be copied assigned in BUF_CNT must be divisible without remainder by the size of the data type.</td>
   </tr>
   <tr>
    <td class="border">6</td>
    <td class="border">The conversion INTEL/MOTOROLA (Little-/Big-Endian)has failed.</td>
   </tr>
   <tr>
    <td class="border">7</td>
    <td class="border">The string length does not fit. Additional checks are necessary for the data type string.</td>
   </tr>
   <tr>
    <td class="border">8</td>
    <td class="border">The destination buffer has a wrong data type. In some cases the data type is checked. This is described in the special chapter for each data type.</td>
   </tr>
   <tr>
    <td class="border">9</td>
    <td class="border">The offset value is not correct. In some cases the offset is checked. This is described in the special chapter for each data type.</td>
   </tr>
   <tr>
    <td class="border">10</td>
    <td class="border">The BUF_CNT does not fit. In some cases the size to be copied is checked.</td>
   </tr>
   <tr>
    <td class="border">11</td>
    <td class="border">The addresses of the source and the destination are the same.</td>
   </tr>
</table>

</div>


<div class="pagebreak"></div>

<!-- *** Add data type definitions here ******************************************** -->
## <a class="link" name="Data_types">Data types</a>

<pre class="example">
TYPE 
  <div class="comment">(* Array for logging *)</div>
  SLO_ARR_BUFFER : ARRAY [0..8499] OF BYTE;

  <div class="comment">(* Two switching arrays for no data loss *)</div>    
  SLO_ARR_ARR_BUFFER : ARRAY [0..1] OF SLO_ARR_BUFFER; 
    
  <div class="comment">(* Internal information *)</div>
  SLO_UDT_LOGGING_BUFFER : STRUCT
    iCount : INT;
    iNumStrings : INT;
  END_STRUCT;
    
  <div class="comment">(* Array for user logging values *)</div>
  SLO_ARR_LOGGING_STRING : ARRAY[0..8] OF STRING;

  <div class="comment">(*Diagnostic information *)</div>
  SLO_UDT_DIAG : STRUCT
    iState : INT;
    wDiagCode : WORD;
    wAddDiagCode : WORD;
  END_STRUCT;
    
END_TYPE
</pre>

<!-- *** Add known issues or delete this chapter *** -->
## <a class="link" name="Known_issues">Known issues</a>

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

</div>