Plugin.define do
name "MyBB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MyBB is a powerful, efficient and free forum package developed in PHP and MySQL. MyBB has been designed with the end users in mind, you and your subscribers. Full control over your discussion system is presented right at the tip of your fingers, from multiple styles and themes to the ultimate customization of your forums using the template system."
website "http://mybb.com/"
dorks [
'"Powered By MyBB"'
]
matches [
    {:regexp=>/(?:<script [^>]+\s+<!--\s+lang\.no_new_posts|<a[^>]* title="Powered By MyBB)/},
    {:regexp=>/Powered By <a href="http:\/\/(mybb.com\/|www.mybboard.net)" target="_blank">MyBB<\/a>, &copy; 2002-20[\d]{2} <a href="http:\/\/(mybb.com\/|www.mybboard.net)" target="_blank">MyBB Group<\/a>./},
    {:text=>'				<!-- MyBB is free software developed and maintained by a volunteer community. '},
    {:text=>'				<!-- You may NOT remove, modify or hinder the visibility of the MyBB copyright at any time.'},
    {:text=>'<!-- The following piece of code allows MyBB to run scheduled tasks. DO NOT REMOVE --><img'},
    {:text=>'Powered By <a href="http://www.mybboard.com" target="_blank">MyBB</a>'}
]
end
