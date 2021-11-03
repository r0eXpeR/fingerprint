Plugin.define do
name "Lithium"
authors [
  "Mateusz Golewski",

]
version "0.1"
description "A Lithium forum engine."
matches [
    {:name=>"BODY id element",
:regexp=>/<body[^>]+id="lia-body"/},
    {:regexp=>/<a [^>]+Powered by Lithium/}
]
end
