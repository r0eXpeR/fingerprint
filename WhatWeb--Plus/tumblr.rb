Plugin.define do
name "Tumblr"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A feature rich and free blog hosting platform offering professional and fully customizable templates, bookmarklets, photos, mobile apps, and social network"
website "http://www.tumblr.com/"
dorks [
'"Powered by Tumblr"'
]
matches [
    {:regexp=>/<iframe src="[^>]+tumblr\.com/},
    {:regexp=>/<link rel="(shortcut )?icon" href="http:\/\/[\d]{1,2}\.media\.tumblr\.com\/avatar_[a-f\d]{12}_16\.gif"[\s]?\/>/},
    {:regexp=>/<meta name="tumblr-theme" content="[\d]+"[\s]?\/>/},
    {:search=>"headers", :text=>'X-Tumblr-User'},
    {:text=>'<!-- BEGIN TUMBLR CODE --><iframe src="http://assets.tumblr.com/iframe.html'}
]
passive do
	m=[]
	m << { :account=>@headers["x-tumblr-user"] } unless @headers["x-tumblr-user"].nil?
	m
end
end
