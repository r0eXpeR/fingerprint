Plugin.define do
name "TypoLight"
authors [
  "Andrew Horton",

]
version "0.2"
description "TypoLight is an OpenSource CMS written in PHP"
website "www.typolight.org"
matches [
{:name=>"typolight.css", :text=>'<link rel="stylesheet" href="system/typolight.css" type="text/css" media="screen" />'},
{:text=>'This website is powered by TYPOlight Open Source CMS :: Licensed under GNU/LGPL'},
{:text=>'<!-- indexer::continue -->'}
]
aggressive do
	m=[]
	target = URI.join(@base_uri.to_s,"/typolight/").to_s
	status,url,ip,body,headers=open_target(target)
	if body =~ /<title>[^<]+TYPOlight[^<]+CMS ([^<]+)<\/title>/
		version=body.scan(/<title>[^<]+TYPOlight[^<]+CMS ([^<]+)<\/title>/)[0][0]
		m << {:name=>"login page version", :version=>version}
	end	
	m
end
end
