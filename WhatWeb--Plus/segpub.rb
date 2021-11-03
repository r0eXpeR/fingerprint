Plugin.define do
name "SegPub"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "SegPub, a hosting solutions provider based in Sydney, Australia"
website "http://segpub.net/"
passive do
	m=[]
	m << { :os=>"FreeBSD7" } if @headers['server'] =~ /SegPache/
	m << { :os=>"FreeBSD7" } if @headers['x-powered-by'] =~ /SegPub/
	m << { :os=>"FreeBSD7" } if @headers['x-powered-by'] =~ /SegPod/
	m
end
end
