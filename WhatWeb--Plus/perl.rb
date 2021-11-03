Plugin.define do
name "Perl"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Perl is a highly capable, feature-rich programming language with over 22 years of development."
website "http://www.perl.org/"
passive do
	m=[]
	m << { :version=>@headers["server"].to_s.scan(/[^\r^\n]*Perl\/v([^\s^\r^\n]+)/i).flatten } if @headers["server"].to_s =~ /[^\r^\n]*Perl\/v([^\s^\r^\n]+)/i
	m << { :name=>"application/perl" } if @headers["content-type"] =~ /application\/perl/i
	m
end
matches [
    {:search=>"headers", :text=>'perl'},
    {:search=>'headers[server]',:offset=>1, :regexp=>/\bPerl\b(?: ?.?v?([\d.]+))?/}
]
end
