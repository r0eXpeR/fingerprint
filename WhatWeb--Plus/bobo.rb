Plugin.define do
name "Bobo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Bobo is a light-weight framework for creating WSGI web applications. It's goal is to be easy to use and remember. It addresses 2 problems: 1) mapping URLs to objects and 2) calling objects to generate HTTP responses. Bobo doesn't have a templating language, a database integration layer, or a number of other features that are better provided by WSGI middle-ware or application-specific libraries. Bobo builds on other frameworks, most notably WSGI and WebOb."
website "http://bobo.digicool.com/"
matches [
    {:name=>"HTTP Bobo-Exception-File Header", :string=>/([^\r^\n]+)/, :search=>"headers[bobo-exception-file]"},
    {:name=>"HTTP Bobo-Exception-Line Header", :regexp=>//, :search=>"headers[bobo-exception-line]"},
    {:name=>"HTTP Bobo-Exception-Type Header", :string=>/([^\r^\n]+)/, :search=>"headers[bobo-exception-type]"},
    {:name=>"HTTP Bobo-Exception-Value Header", :regexp=>//, :search=>"headers[bobo-exception-value]"},
    {:name=>"X-Ksscommands HTTP Header", :regexp=>//, :search=>"headers[x-ksscommands]"},
    {:search=>"headers", :text=>'Bobo-Exception-Line'},
    {:search=>"headers", :text=>'x-ksscommands'}
]
end
