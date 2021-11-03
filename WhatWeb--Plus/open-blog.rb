Plugin.define do
name "Open-Blog"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Open blog is a free and open source blogging platform built using the CodeIgniter PHP framework and released under the GPL v3 license."
website "http://www.open-blog.info/"
dorks [
'"powered by Open blog"'
]
matches [
{ :regexp=>/Powered by <a href="http:\/\/www.open-blog.info[\/]*" target="_blank">Open Blog<\/a>/ },
{ :text=>'Powered by <a href="http://www.open-blog.info"' },
{ :text=>'    	Powered by <a href="http://www.open-blog.info" target="_blank">Open Blog</a>' },
{ :version=>/			<a href="install.php">Install Open Blog<\/a> - choose this option, if you would like to install Open Blog ([\d\.]+)<br \/>/ },
]
end
