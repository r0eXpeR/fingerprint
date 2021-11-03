Plugin.define do
name "QuickWeb"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "QuickWeb [Italian]"
dorks [
'intitle:"QWScript Error" filetype:qws'
]
matches [
{ :text=>"<HTML><HEAD><TITLE>QWScript Error</TITLE></HEAD>" },
]
end
