Plugin.define do
name "Springboot"
authors [
  "winezero", 

]
version "0.1"
description "Springboot Framework is an open source application framework for the Java platform."
website "http://www.springsource.org/"
matches [
{ :text=>"Whitelabel Error Page" },  
{ :search=>"headers", :text=>"org.springframework" },
{ :url => '/'+randstr()+'/'+randstr()+'/'+randstr(), :regexp=>/Whitelabel Error Page|The requested URL was not found on this server/},  
{ :url => "/favicon.ico", :md5 => '0488faca4c19046b94d07c3ee83cf9d6' },  
]
end
