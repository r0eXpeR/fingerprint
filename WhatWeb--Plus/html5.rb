Plugin.define do
name "HTML5"
authors [
  "Andrew Horton",

]
version "0.2"
description "HTML version 5, detected by the doctype declaration"
matches [
{ :regexp=>/<!DOCTYPE html>/i },
{ :string=>"applicationCache", :regexp=>/<html[^>]* manifest=/ },
]
end
