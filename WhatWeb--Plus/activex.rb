Plugin.define do
name "ActiveX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "ActiveX is a framework based on Microsoft's Component Object Model (COM) and Object Linking and Embedding (OLE) technologies. ActiveX components officially operate only with Microsoft's Internet Explorer web browser and the Microsoft Windows operating system. - More info: http://en.wikipedia.org/wiki/ActiveX"
matches [
	{ :module=>/<object [^>]*classid=["']?clsid:([\s]*[a-f\d\-]+)['"]?/i },
	{ :string=>"Flash-ActiveX", :regexp=>/d27cdb6e-ae6d-11cf-96b8-444553540000/ }
]
end
