Plugin.define do
name "x-pingback"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A pingback is one of three types of linkbacks, methods for Web authors to request notification when somebody links to one of their documents. This enables authors to keep track of who is linking to, or referring to their articles. Some weblog software, such as Movable Type, Serendipity, WordPress and Telligent Community, support automatic pingbacks where all the links in a published article can be pinged when the article is published. - More info: http://en.wikipedia.org/wiki/Pingback"
passive do
	m=[]
	m << { :string=>@headers["x-pingback"] } unless @headers["x-pingback"].nil?
	m
end
end
