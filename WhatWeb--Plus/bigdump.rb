Plugin.define do
name "BigDump"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BigDump: Staggered MySQL Dump Importer "
website "http://www.ozerov.de/bigdump.php"
dorks [
'inurl:"bigdump.php" intitle:"BigDump ver" "Filename" "BigDump: Staggered MySQL Dump Importer"'
]
matches [
    {:regexp=>/<!-- <h1>BigDump: Staggered MySQL Dump Importer ver\. ([\d.b]+)/,:offset=>1},
    {:text=>'BigDump'},
    {:text=>'BigDump: Staggered MySQL Dump Importer'},
    {:version=>/<h1>BigDump: Staggered MySQL Dump Importer ver\. ([^\s^<]{2,6})<\/h1>/},
    {:version=>/<title>BigDump ver\. ([^\s^<]{2,6})<\/title>/}
]
end
