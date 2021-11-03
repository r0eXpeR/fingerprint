Plugin.define do
name "Oracle-Real-User-Experience-Insight"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Oracle Real User Experience Insight - passive network performance analysis and usage analysis"
website "http://www.oracle.com/technetwork/oem/uxinsight/"
dorks [
'intitle:"Oracle Real User Experience Insight" inurl:ruei "Please login"'
]
matches [
{ :string=>/<title>Oracle Real User Experience Insight \-\[ ([^\s]+@[^\s]+) \]\-<\/title>/ },
{ :version=>/<title>Oracle Real User Experience Insight \-\[ ([\d\.a-z]+) \]\-<\/title>/ },
{ :version=>/<div class="windowWatermark">Version: ([^\s]+)/ },
{ :url=>"/ruei/rpc.php", :text=>'{"retval":false,"error_' },
]
end
