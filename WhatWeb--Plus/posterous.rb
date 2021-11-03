Plugin.define do
name "Posterous"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Posterous publishing platform. If you can email, you can manage a website and share it with small groups or the world using Posterous. - https://posterous.com/"
matches [
    {:account=>/<meta property="og:site_name" content="([^"]+)'s posterous" \/>/},
    {:regexp=>/<div class="posterous/},
    {:regexp=>/<html><body>You are being <a href="http:\/\/([^"]+)\.posterous\.com\/">redirected<\/a>\.<\/body><\/html>/},
    {:text=>'<div class="posterous_site_data" data-post-id="'},
    {:text=>'<li class="first"><a href="http://posterous.com/login?jumpto=http'},
    {:text=>'<meta name="generator" content="Posterous" />'}
]
passive do
	m=[]
	m << { :name=>"_sharebymail_session_id cookie" } if @headers["set-cookie"] =~ /^_sharebymail_session_id=/
	m << { :name=>"x-posteroushostname header" } unless @headers["x-posteroushostname"].nil?
	m
end
end
