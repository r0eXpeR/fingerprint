Plugin.define do
name "Advantech-WebAccess"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Advantech WebAccess HMI/SCADA software"
website "http://webaccess.advantech.com/"
dorks [
'inurl:"broadWeb/bwconfig.asp"'
]
matches [
    {:search=>"headers[location]", :account=>/\.\/broadWeb\/bwRoot\.asp\?username=([^\s]+)/},
    {:search=>"headers[location]", :regexp=>/\.\/broadWeb\/bwviewpg\.asp\?proj=/},
    {:text=>'/broadWeb/bwuconfig.asp'},
    {:text=>'/broadweb/WebAccessClientSetup.exe'},
    {:text=>'/bw_templete1.dwt'},
    {:text=>'<a href="/broadweb/WebAccessClientSetup.exe">'},
    {:text=>'<html><!-- #BeginTemplate "/Templates/bw_templete1.dwt" -->'},
    {:version=>/<div style="position:relative;top:15;width:870px; height:15px">\s+<font class=e5>[^:^<]+ : ([^\s]+)<\/font>/}
]
end
