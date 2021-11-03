Plugin.define do
name "Open-Realty"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open-Realty is a FREE commercial web based real estate listing management application."
website "http://www.open-realty.org/"
dorks [
'"powered by Open-Realty"'
]
matches [
{ :version=>/<title>Open-Realty ([\d\.]+) - [^<]+<\/title>/ },
{ :text=>'<meta name="Generator" content="Open-Realty" />' },
{ :text=>'Powered by <a href="http://www.open-realty.org"><b>Open-Realty</b></a>' },
{ :text=>'Powered by <a href="http://open-realty.org" title="Open-Realty&reg;" rel="external">Open-Realty</a>' },
{ :text=>'<!--Open-Realty is distributed by Transparent Technologies and is Licensed under the Open-Realty License. See http://www.open-realty.org/license_info.html for more information.-->' },
]
end
