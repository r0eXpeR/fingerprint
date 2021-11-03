Plugin.define do
name "Site-Sift"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Site Sift Listings is a FREE directory script with many features that webmasters want including creation of static pages. Site Sift Listings can be customized to create the look and feel you want from a directory. Requirements: PHP."
website "http://scripts.site-sift.com/"
dorks [
'inurl: "index php go addpage"',
'"powered by Site Sift" -exploit -"SQL Injection"'
]
matches [
{ :certainty=>25, :ghdb=>'inurl: "index.php?go=detail id="' },
{ :certainty=>25, :ghdb=>'inurl: "index php go addpage"' },
{ :certainty=>25,:ghdb=>'"powered by Site Sift"' },
{ :regexp=>/<div align="center" class="copyright">powered by <A class="bottomlink" href="http:\/\/[scripts|www]+.site-sift.com[\/]*">Site Sift[^<]*<\/A><\/div>/i },
{ :text=>'				<!-- end of header.php -->' },
{ :text=>'				<!-- begin of footer.php -->' },
]
end
