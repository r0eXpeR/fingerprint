Plugin.define do
name "Werkzeug"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Werkzeug is a WSGI utility library for Python."
website "http://werkzeug.pocoo.org/"
matches [
{ :search=>"headers[server]", :version=>/^Werkzeug\/([\d\.]+)/ },
{ :status=>302, :certainty=>75, :text=>'<p>You should be redirected automatically to target URL:' },
]
end
