Plugin.define do
name "MapServer-4-Windows"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MapServer for Windows (MS4W)"
website "http://www.maptools.org/ms4w/"
matches [
{ :text=>'<title>MS4W - MapServer 4 Windows</title>' },
{ :version=>/<h1>MS4W - MapServer 4 Windows - version ([^<]+)<\/h1>\s+<h2>Introduction<\/h2>/ },
]
end
