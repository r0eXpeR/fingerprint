Plugin.define do
name "Arab-Portal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Arab-Portal"
dorks [
'"powered by Arab Portal" -exploit'
]
matches [
    {:regexp=>/<META NAME="COPYRIGHT" CONTENT="Copyright[^\>]*by Arab[\s]*Portal"/},
    {:text=>'Powered by: Arab'},
    {:version=>/<META content="[^>]*Powered by: Arab Portal v([\d\.]+), Copyright[^>]*" name="description">/},
    {:version=>/<center><font size=2>Powered by: Arab[\s]*Portal v([\d\.]+)[\s]*, Copyright/}
]
end
