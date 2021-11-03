Plugin.define do
name "Scrutinizer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Scrutinizer NetFlow - monitoring solution"
website "http://www.plixer.com/products/netflow-sflow/scrutinizer-netflow-sflow.php"
dorks [
'intitle:"Scrutinizer" "For the best Scrutinizer experience possible, please address the issues below"'
]
matches [
{ :version=>/<div id='testAlertDivTitle'>Scrutinizer ([^<]+)<\/div>/ },
{ :regexp=>/<link id='scrutStyle' rel="stylesheet" href="\/css\/classic\.css/ },
{ :regexp=>/<div id='testAlertHdrMsg'>For the best Scrutinizer experience possible, please address the issues below:<\/div>/ },
]
end
