Plugin.define do
name "Scriptaculous"
authors [
  "Andrew Horton",

]
version "0.2"
description "Javascript library"
matches [
{:regexp=>/<script [^>]*(scriptaculous[^>]*.js)[^>]*/}
]
end
