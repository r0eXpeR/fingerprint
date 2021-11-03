Plugin.define do
name "Blogger"
authors [
  "Andrew Horton",

]
version "0.2"
description "Blogger.com free blogging site"
matches [
    {:name=>"Powered by link", :regexp=>/<a href="http:\/\/www.blogger.com"><img [^>]* alt="Powered by Blogger"><\/a>/},
    {:search=>'body', :regexp=>/^Blogger$/},
    {:text=>"<meta content='blogger' name='generator'/>"}
]
end
