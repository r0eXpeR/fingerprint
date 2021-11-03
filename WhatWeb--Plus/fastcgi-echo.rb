Plugin.define do
name "FastCGI-echo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Many Oracle web server installations have a fcgi-bin/echo script left over from default demo (google for inurl:fcgi-bin/echo). This file should have been removed as per: http://download.oracle.com/docs/cd/B14099_19/core.1012/b13999/checklist.htm#BABIBCIC"
dorks [
'inurl:fcgi-bin/echo intitle:"FastCGI echo"'
]
matches [
{ :text=>'SCRIPT_NAME=/fcgi-bin/echo' },
{ :text=>'<title>FastCGI echo</title><h1>FastCGI echo</h1>' },
{ :text=>'REQUEST_URI=/fcgi-bin/echo' },
{ :version=>/HTTP_ORACLE_CACHE_VERSION=([\d\.]+)/ },
{ :version=>/SERVER_SOFTWARE=([^\n]+)/ },
{ :version=>/SERVER_SIGNATURE=<ADDRESS>([^<]+)/ },
]
end
