Plugin.define do
name "DMXReady-Secure-Document-Library"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DMXReady Secure Document Library secures files so that only registered members can access and download them."
website "http://www.dmxready.com/?product=secure-document-library"
dorks [
'inurl:inc_securedocumentlibrary.asp'
]
matches [
{ :regexp=>/<a href="[^"]*\/applications\/[sS]ecureDocumentLibrary\/inc_securedocumentlibrary\.asp\?show=sendpassword">Forget Password\?<\/a>/ },
{ :regexp=>/<form action="[^"]*\/applications\/SecureDocumentLibrary\/inc_securedocumentlibrary\.asp" method="POST" name="login" onSubmit="YY_checkform\('login','entity_username','#q','0','Please provide username','entity_password','#q','0','Please provide password'\);return document.MM_returnValue"/i },

]
end
