Plugin.define do
name "SyndeoCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "A Content Management System (CMS) for primary schools, which helps you manage and maintain your website. It can also be a very usefull CMS for small companies or non profit organizations. "
website "http://www.syndeocms.org"
dorks [
'"powered by SyndeoCMS"'
]
matches [
{ :regexp=>/Powered by <a href="http:\/\/www.syndeocms.org[\/]?" target="_blank">/i },
{ :regexp=>/Powered by <a href="http:\/\/www.syndeocms.org[\/]?" title="SyndeoCMS">/i },
{ :regexp=>/Powered by <a href="http:\/\/www.syndeocms.org[\/]?"[^>]*>SyndeoCMS<\/a>/i },
{ :regexp=>/Site created with <a href="http:\/\/www.syndeocms.org[\/]?">SyndeoCMS<\/a>/ },
{ :version=>/<div class="meta"><center>Powered by <a href="http:\/\/www.syndeoCMS.org\/" target="_blank">SyndeoCMS ([\d\.]+)<\/a>/ },
{ :text=>"<!-- Please don't remove my credits! I worked hard to create this theme and distribute it freely. Thanks! -->" },
]
end
