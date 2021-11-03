Plugin.define do
name "WPML-Plugin"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "The WordPress Multilingual Plugin enables multilingual websites"
website "https://wpml.org/"
matches [
	{ :search => "headers[set-cookie]", :regexp => /_icl_current_language/, :name=>"_icl_current_language cookie" },
] 
end
