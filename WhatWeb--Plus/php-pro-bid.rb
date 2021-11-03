Plugin.define do
name "PHP-Pro-Bid"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP Pro Bid - Auction software"
website "http://www.phpprobid.com/"
dorks [
'"PLEASE LOGIN TO THE ADMIN AREA" "Current Version"'
]
matches [
{ :version=>/            <div class="version">Current Version:[\r\n]+               ([\d\.]{1,5})            <\/div>[\r\n]+/ },
{ :regexp=>/<td colspan="2" bgcolor="#[^"]{3,6}" style="color: #ffffff; font-weight: bold;">PLEASE LOGIN TO THE ADMIN AREA<\/td>/ },

]
end
