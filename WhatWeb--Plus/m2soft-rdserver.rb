Plugin.define do
name "M2Soft-RDServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "M2Soft Report Designer Server - reporting tool"
website "http://www.m2soft.co.kr/english/reporting-tool.asp"
dorks [
'intitle:"M2Soft Report Designer Server" inurl:"RDServer/rdagent.jsp"'
]
matches [
{ :text=>'<title>M2Soft Report Designer Server</title>' },
{ :url=>"/RDServer/rdagent.jsp", :version=>/<font face="Verdana" size=2>\s+<li>Server version : ([^\s]+)/ },
{ :search=>"headers[writereportlog]", :regexp=>/^FALSE$/ },
{ :search=>"headers[server]", :version=>/^RDServer\/([^\s]+)$/ },
]
end
