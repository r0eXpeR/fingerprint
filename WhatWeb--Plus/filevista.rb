Plugin.define do
name "FileVista"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FileVista is a web file manager for storing, managing and sharing files online through your web browser."
website "http://www.gleamtech.com/products/filevista/web-file-manager"
dorks [
'"Welcome to FileVista" "Please enter your credentials:" "User name"'
]
matches [
    {:text=>"<td>Welcome to FileVista<br />Please enter your credentials:</td>"},
    {:text=>'<a href="http://www.gleamtech.com/products/filevista/web-file-manager'},
    {:text=>'Welcome to FileVista'},
    {:version=>/<!--\r?\n\tFileVista v([\d\.]+)\r?\n\tCopyright /}
]
end
