Plugin.define do
name "MHttpd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "MHTTPD stands for Minimal Hypertext Transport Protocol Daemon. MHTTPD is fast, simple and very small. It supports HTTP GET and POST method (that's all you need for more than 90% of time). It also supports HTTP Basic Authentication. Authentication can be performed by name and password lookup in a text file (userid:Unix_crypted_password) or from A LDAP server directly. And the server can be compiled as a secure server (SSL). The server does not have any configuration file and will not have any. Everything needed is hard coded at the top of the single C file."
matches [
	{ :regexp=>/[\s]*mhttpd/, :search=>"headers[server]" },
	{ :version=>/[\s]*mhttpd v([\d\.]+)/, :search=>"headers[server]" },
	{ :version=>/[\s]*MHttpd\/([\d\.]+) \([^\;]+; [^\;]+; Meta-HTML\/[\d\.]+\)/, :search=>"headers[server]" },
	{ :module=>/[\s]*MHttpd\/[\d\.]+ \([^\;]+; ([^\;]+); Meta-HTML\/[\d\.]+\)/, :search=>"headers[server]" },
	{ :version=>/[\s]*MHttpd\/([\d\.]+) \([^\;]+; [^\;]+; Meta-HTML\/[\d\.]+\)/, :search=>"headers[meta-html-engine]" },
	{ :module=>/[\s]*MHttpd\/[\d\.]+ \([^\;]+; ([^\;]+); Meta-HTML\/[\d\.]+\)/, :search=>"headers[meta-html-engine]" },
]
end
