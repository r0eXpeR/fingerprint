Plugin.define do
name "Web2py"
authors [
  "Napz <napzs@rocketmail.com>", 

]
version "0.1"
description "Web2py - Free open source full-stack framework written in Pytho"
website "http://www.web2py.com/"
dorks [
'"powered by Web2py"'
]
matches [
    {:search=>"headers[x-powered-by]", :string=>/web2py/},
    {:search=>'body', :regexp=>/^Web2py/},
    {:search=>'body', :regexp=>/web2py\.js/},
    {:search=>'headers[x-powered-by]', :regexp=>/web2py/},
    {:text=>'<div id="serendipityLeftSideBar">'}
]
end
