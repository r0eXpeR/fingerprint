Plugin.define do
name "StackExchange"
authors [
  "Mateusz Golewski",

]
version "0.1"
description "StackExchange family Q&A forums."
matches [
{:name=>"StackExchange.init() call",
:regexp=>/StackExchange.init/},
]
end
