Plugin.define do
name "Worldgroup-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Major BBS (sometimes MajorBBS or MBBS) was a bulletin board system server developed between 1986 and 1999 by Galacticomm. In 1995 it was renamed Worldgroup Server and bundled with a user client interface program named Worldgroup Manager for Microsoft Windows. Originally DOS based, two of the versions were also available as Unix-based edition, and the last versions were also available for Windows NT-based servers. - More Info: http://en.wikipedia.org/wiki/The_Major_BBS"
passive do
	m=[]
	if @headers["server"] =~ /^Worldgroup\/([^\s]+)/
		m << { :version=>"#{$1}" }
	end
	m
end
end
