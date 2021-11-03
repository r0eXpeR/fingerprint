Plugin.define do
name "Kinja"
authors [
  "Sigit Dewanto",

]
version "0.1"
description "Kinja is Gawker Media's discussion platform."
matches [
{ :name=>"X-Kinja Header", :regexp=>/^$/, :search=>"headers[x-kinja]" }
]
end
