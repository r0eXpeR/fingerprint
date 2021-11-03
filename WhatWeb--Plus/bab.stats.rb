Plugin.define do
name "BAB_Stats"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BAB.Stats is a statistics system for the Delta Force series of games by Novalogic."
website "http://www.babstats.com/progress.php"
dorks [
'intitle:"Powered by BAB.Stats"',
'"BAB.Stats is a statistics system for the Delta Force series of games by Novalogic" inurl:"index.php?action=about"'
]
matches [
{ :text=>'<meta NAME="Author" CONTENT="Bab.Stats Team">' },
{ :certainty=>25, :regexp=>/<title>[^:]+ :: [^:]+ :: Powered by BAB.stats<\/title>/ },
{ :version=>/Powered by BAB.Stats :: <a href="index.php\?action=about&bms=" onmouseover="doTooltip\(event, 'About BaB.Stats'\)" onmouseout="hideTip\(\)">BabStats v([\d\.]+)<\/a>/ },
{ :version=>/Powered by <a href="index.php\?action=about&bms=">BAB.stats<\/a> version ([\d\.]+)/ },
{ :text=>'<meta NAME="Author" CONTENT="Tomas Stucinskas a.k.a Baboon">', :string=>"Chronos" },
{ :text=>' - Powered by BAB.stats Chronos</title>', :string=>"Chronos" },
{ :text=>'<!-- AUTHOR : Tomas Stucinskas a.k.a Baboon -->', :string=>"Chronos" },
{ :version=>/Powered by Bab.stats ::[\r\n\s]*<a[^>]+href="(http:\/\/www.babstats.com\/|\/Neos_Chronos\/index.php\?action=about)">Neos.Chronos<\/a> ::[\s\r\n]*Version ([^\(]+) \(Standalone\)/, :offset=>1, :string=>"Chronos" },
]
end
