Plugin.define do
name "Linksys-Print-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Linksys Print Server - Print servers connect printers directly to the network so that multiple PCs can share them."
website "http://homesupport.cisco.com/en-us/wireless/lbc/PSUS4/download"
matches [
{ :text=>'<td align="right" class="pname" height="25" colspan="5">Print Server for USB with 4-Port Switch &nbsp; &nbsp; </td>', :model=>"PSUS4" },
{ :firmware=>/<td width="585" colspan="2" bgcolor="#6666CC" valign="bottom" align="right"><span class="fwversion">Firmware Version: &nbsp; ([^\s]{1,10}) <\/span> &nbsp;&nbsp;<\/td>/ },
{ :certainty=>25, :version=>/^PRINT_SERVER WEB ([\d\.]+)$/, :search=>"headers[server]" },
{ :certainty=>25, :regexp=>/^PRINT_SERVER WEB/, :search=>"headers[server]" },
]
end
