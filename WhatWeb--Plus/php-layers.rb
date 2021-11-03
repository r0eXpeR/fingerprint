Plugin.define do
name "PHP-Layers"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description 'PHP Layers Menu is a hierarchical menu system to prepare "on the fly" DHTML menus relying on the PHP scripting engine for the processing of data items."
website "http://phplayersmenu.sourceforge.net'
dorks [
'"Powered by PHP Layers"'
]
matches [
{ :certainty=>75, :ghdb=>'"Powered by PHP Layers"' },
{ :text=>"// because Konqueror 3 sets IE = 1 ... AAAAAAAAAARGHHH!!!" },
{ :text=>'.png" alt="Powered by PHP Layers Menu" height="31" width="88" /></a>' },
{ :version=>/<!-- end of menu header - PHP Layers Menu ([^\s]+) \(C\) [0-9]{4}-[0-9]{4} Marco Pratesi/ },
{ :version=>/\/\/ PHP Layers Menu ([^\s]+) \(C\) [0-9]{4}-[0-9]{4} Marco Pratesi/ },
]
end
