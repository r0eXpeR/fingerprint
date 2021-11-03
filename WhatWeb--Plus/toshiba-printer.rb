Plugin.define do
name "ToshibaPrinter"
authors [
  "Andrew Horton",

]
version "0.2"
description "Toshiba printer Top Access"
matches [
{:text=>'<TITLE CLASS="clsTitle1">TopAccess</title>' }
]
end
