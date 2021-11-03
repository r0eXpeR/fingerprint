Plugin.define do
name "TypePad"
authors [
  "Andrew Horton",

]
version "0.2"
description "Blogging platform http://www.typepad.com/"
matches [
    {:regexp=>/typepad/, :search=>'body'},
    {:text=>'<meta name="generator" content="http://www.typepad.com/"'}
]
end
