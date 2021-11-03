Plugin.define do
name "MyShell"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MyShell - PHP powered shell"
dorks [
'intitle:"MyShell 1.1.0 build 20010923" -intitle'
]
matches [
{ :text=>'&nbsp;| ::::::::::&nbsp;<a href="http://www.digitart.net" target="_blank" style="text-decoration:none"><b>MyShell</b> &copy;2001 Digitart Producciones</a>' },
{ :version=>/<title>MyShell ([\d\.]+ build [\d]{8})<\/title>/ },
]
end
