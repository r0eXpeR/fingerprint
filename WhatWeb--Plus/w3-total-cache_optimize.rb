Plugin.define do
name "W3-Total-Cache"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The fastest and most complete WordPress performance optimization plugin. Trusted by many popular blogs - W3 Total Cache improves the user experience of your blog by improving your server performance, caching every aspect of your site, reducing the download time of your theme and providing transparent content delivery network (CDN) integration."
website "http://www.w3-edge.com/wordpress-plugins/w3-total-cache/"
matches [
    {:regexp=>/<!--[^>]+W3 Total Cache/},
    {:regexp=>/W3 Total Cache(?:.([\d.]+))?/,:offset=>1, :search=>'headers[x-powered-by]'},
    {:text=>'<!-- Performance optimized by W3 Total Cache. Learn more: http://www.w3-edge.com/wordpress-plugins/'}
]
passive do
	m=[]
	m << { :version=>@headers['x-powered-by'].scan(/W3 Total Cache\/([\d\.]+)/) } if @headers['x-powered-by'] =~ /W3 Total Cache\/([\d\.]+)/
	m
end
end
