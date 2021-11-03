Plugin.define do
name "Meta-Refresh-Redirect"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.4"
description "
used to optionally wait x seconds before reloading the current page or loading a
new page. More info: https://secure.wikimedia.org/wikipedia/en/wiki/Meta_refresh"
matches [
]
passive do
	x = @body.scan(Target::meta_refresh_regex).flatten
	unless x.empty?
		meta_refresh = x.first
		meta_refresh = decode_html_entities(meta_refresh).strip
		[{:string=>meta_refresh}]
	else
		[]
	end
end
end
