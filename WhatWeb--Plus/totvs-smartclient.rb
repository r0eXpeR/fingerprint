Plugin.define do
name "TOTVS-SmartClient"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TOTVS SmartClient MacOS TOTVS Application Server."
website "http://www.totvs.com/"
dorks [
'intitle:"TOTVSSMARTCLIENT" "URL do Totvs Server"'
]
matches [
{ :version=>/<object\s+classid="clsid:[a-f\d\-]+"\s+codebase="TotvsSmartClientax\.cab#version=([^"]+)"/ },
{ :string=>/<param name="StartProgram" value="([^"]+)"> <<= Programa/ },
{ :string=>/<param name="Environment" value="([^"]+)"> <<= Ambiente/ },
{ :search=>"headers[TotvsSmartClient]", :regexp=>/^TotvsSmartClient$/ },
]
end
