Plugin.define do
name "vbPortal"
authors [
  "Brendan Coles <bcoles@gmail.com>",

]
version "0.2"
description "Portal and CMS for vBulletin"
website "http://www.vbportal.com/"
matches [
{ :text=>'<meta name="generator" content="vbPortal - Copyright 2010" />' },
{ :text=>'	<!-- Do not remove  or your scheduled tasks will cease to function -->' },
{ :version=>/<meta name="generator" content="vbPortal ([\d\.]+)" \/>/ },
{ :version=>/Portal By vbPortal Version ([\d\.]+)<br \/>/ },
]
end
