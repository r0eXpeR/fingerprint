Plugin.define do
name "Laravel"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Laravel PHP Framework"
website "http://laravel.com/"
matches [
    {:search=>"headers", :text=>'laravel_session'},
    {:search=>"headers[set-cookie]", :regexp=>/^laravel_session/, :name=>"laravel_session cookie"},
    {:serach=>'headers', :text=>'laravel_session'}
]
end
