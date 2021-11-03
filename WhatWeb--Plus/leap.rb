Plugin.define do
name "LEAP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LEAP is a Content Management System (LEAP CMS), yet so much more than this. Because of its wide range of features that go beyond content management, it is also referred to as a Website Operating System."
website "http://www.leapcms.com/"
dorks [
'inurl:LEAP/error.lasso'
]
matches [
{ :version=>/<meta name="Generator" content="LEAP ([\d\.]+)"( \/)?>/ },
{ :version=>/<meta name="Formatter" content="LEAP ([\d\.]+)"( \/)?>/ },
]
passive do
	m=[]
	if @base_uri.host
		if @body =~ Regexp.new('if \(ls == lw.length\) window.location = "http[s]?:\/\/'+Regexp.escape(@base_uri.host)+'\/LEAP\/error.lasso";')
			m << { :name=>"/LEAP/error.lasso JavaScript" }
		end
	end
	if @status == 401 and @headers["www-authenticate"] =~ /^Basic realm="LEAP"$/ and @base_uri.path =~ /^\/LEAP\//
		m << { :name=>"/LEAP/ www-authenticate" }
	end
	m
end
end
