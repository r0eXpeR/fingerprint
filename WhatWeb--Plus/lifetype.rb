Plugin.define do
name "LifeType"
authors [
  "Aung Khant, http://yehg.net",

]
version "0.2"
description "LifeType is an open-source blogging platform with support for multiple blogs and users in a single installation."
website "http://lifetype.net"
dorks [
'"Powered by LifeType"'
]
matches [
	{ :regexp=>/Powered by <a href="http:\/\/lifetype.net[^>]*>Lifetype<\/a>/i },
	{ :text=>'Powered by <a href="http://www.lifetype.net">LifeType</a>' },
	{ :version=>/<meta name="generator" content="lifetype-([\w\.]+)"/ },
	{ :text=>'LifeType has not been installed yet, you\'ll have to <font color="red"><b><a href="wizard.php" title="Install LifeType">Install LifeType</a></b></font> first!' },
]
end
