Plugin.define do
name "QuickerSite"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "QuickerSite is a Content Management System for Windows Servers. It is written in ASP/VBScript with an optional pinch of ASP.NET for true image-resizing capabilities."
website "http://www.quickersite.com/"
dorks [
'"Powered by QuickerSite"'
]
matches [
{ :regexp=>/<meta content="QuickerSite CMS - visit www.quickersite.com" name="generator" \/>/i },
{ :regexp=>/<meta name="generator" content="QuickerSite CMS - visit www.quickersite.com">/i },
]
end
