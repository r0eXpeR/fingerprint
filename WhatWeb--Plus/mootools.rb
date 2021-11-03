Plugin.define do
name "MooTools"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MooTools is a compact, modular, Object-Oriented JavaScript framework designed for the intermediate to advanced JavaScript developer. It allows you to write powerful, flexible, and cross-browser code with its elegant, well documented, and coherent API."
website "http://mootools.net/"
dorks [
'ext:js "Copyright (c) 2006-2008 Valerio Proietti" "http://mad4milk.net"'
]
matches [
    {:regexp=>/^\/\/ Load your build at: http:\/\/mootools.net\/core\//},
    {:regexp=>/^\/\/MooTools More, <http:\/\/mootools.net\/more>. Copyright \(c\) 2006-2008 Valerio Proietti, <http:\/\/mad4milk.net>, MIT Style License./},
    {:regexp=>/mootools.*\.js/, :search=>'body'},
    {:version=>/^MooTools.More[\s]*=[\s]*\{[\s]*version:[\s]*["']?([^\"^\']+)["']?/},
    {:version=>/^var MooTools[\s]*=[\s]*\{[\s]*version:[\s]*["']?([^\"^\']+)/}
]
end
