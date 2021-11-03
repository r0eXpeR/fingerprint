Plugin.define do
name "Nucleus-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Nucleus CMS"
website "http://nucleuscms.org/"
dorks [
'intitle:"Nucleus Install" "Install Nucleus" "Hostname" "Username" "Password"'
]
matches [
{ :version=>/<meta name="generator" content="Nucleus CMS v([^"^>]+)" \/>/ },
{ :filepath=>/<td>Admin-area <strong>path<\/strong>:<\/td>[\s]+<td><input name="AdminPath" size="60" value="([^"]+)" \/>/ },
{ :text=>'<meta name="name" content="My Nucleus CMS" />' },
{ :version=>/<small>Copyright \| <a href="http:\/\/nucleuscms\.org">Nucleus CMS v([^\s^>]+)<\/a> \|/ },
]
end
