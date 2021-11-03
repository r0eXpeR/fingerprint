Plugin.define do
name "WebDAV"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Web-based Distributed Authoring and Versioning (WebDAV) is a set of methods based on the Hypertext Transfer Protocol (HTTP) that facilitates collaboration between users in editing and managing documents and files stored on World Wide Web servers. - More Info: http://en.wikipedia.org/wiki/WebDAV"
matches [
	{ :regexp=>/[^\r^\n]*DAV\//, :search=>"headers[server]" },
	{ :version=>/[^\r^\n]*DAV\/([^\s^\r^\n]*)/, :search=>"headers[server]" },
	{ :name=>"MS-Author-Via HTTP Header", :regexp=>/^[\s]*DAV/, :search=>"headers[MS-Author-Via]" },
	{ :version=>/[\s]*1,2,<http:\/\/([^>]+)>/, :search=>"headers[dav]" },
	{ :name=>"x-webdav-status HTTP Header", :regexp=>//, :search=>"headers[x-webdav-status]" },
]
end
