Plugin.define do
name "Apache-CouchDB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Apache CouchDB is a document-oriented database written in Erlang that can be queried and indexed in a MapReduce fashion using JavaScript. CouchDB provides a RESTful JSON API than can be accessed from any environment that allows HTTP requests."
website "http://couchdb.apache.org/"
passive do
	m=[]
	if @headers["server"] =~ /^CouchDB\/([^\s]+) \((Erlang OTP\/R[^\s^\)]+)\)$/
		m << { :version=>"#{$1}" }
		m << { :string=>"#{$2}" }
	end
	m
end
end
