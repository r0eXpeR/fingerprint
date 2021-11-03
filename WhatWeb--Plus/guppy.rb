Plugin.define do
name "GuppY"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "An easy, free web portal, GuppY will allow you to generate very easily a complete and interactive web site. It requires no database."
website "http://www.freeguppy.org/?lng=en"
dorks [
'"Powered by GuppY" "CeCILL Free License"'
]
matches [
    {:text=>'<meta name="Generator" content="GuppY">'},
    {:text=>'class="copyright" href="http://www.freeguppy.org/'},
    {:text=>'content="GuppY'},
    {:version=>/  <!--\[  GuppY v([\d\.]+) CeCILL Copyright \(C\) [\d]{4}\-[\d]{4} by Laurent Duveau \- http:\/\/www.freeguppy.org\/  \]-->/},
    {:version=>/<div class="foot"><span class='copyright'>&nbsp; <a class='copyright' href='http:\/\/www.freeguppy.org\/' title='GuppY site' target='_blank'> Site powered by GuppY v([\d\.]+) <\/a>/}
]
end
