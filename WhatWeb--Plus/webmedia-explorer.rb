Plugin.define do
name "Webmedia-Explorer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Webmedia Explorer scans and indexes everything under a folder called 'media' under the document root and builds a website automaticaly, generating file and folder listings, image galleries, message boards, news or simply text, anywhere it finds the corresponding data."
website "http://www.webmediaexplorer.com/"
matches [
{ :version=>/Powered by <a href="http:\/\/www.webmediaexplorer.com[^>]*>webmedia explorer ([\d\.]+)<\/a>/i },
]
end
