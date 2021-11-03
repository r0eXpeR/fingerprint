Plugin.define do
name "phpBB"
authors [
  "Andrew Horton",

]
version "0.3"
description "phpBB is a free forum"
website "http://phpbb.org/"
dorks [
'"Powered by phpBB"'
]
matches [
    {:name=>"In total there are x users online ::",
:regexp=>/In total there are <b>[0-9]+<\/b> users online :: [0-9]+ Registered, [0-9]+ Hidden and [0-9]+ Guests/},
    {:name=>"Powered by...",
:regexp=>/Powered by <a href="http:\/\/www.phpbb.com\/"( target="_phpbb")?( class="copyright")?>phpBB<\/a>[ ]+&copy;[ 0-9,\.]+ phpBB Group/},
    {:name=>"folder icons",
:regexp=>/<td width="20" align="center"><img src="[^"]+images\/folder_new_big.gif" alt="New posts"\/><\/td>/},
    {:regexp=>/<[^>]+styles.(?:sub|pro)silver.theme/},
    {:regexp=>/<div class=phpbb_copyright>/},
    {:regexp=>/<img[^>]+i_icon_mini/},
    {:regexp=>/<table class="[^"]*forumline/},
    {:regexp=>/Powered by <a[^>]+phpBB/},
    {:regexp=>/phpBB Group/, :search=>'body'},
    {:search=>"headers", :text=>'HttpOnly, phpbb3_'},
    {:search=>"headers", :text=>'Set-Cookie: phpbb3_'},
    {:search=>"headers[set-cookie]", :version=>/phpbb([\d])mysql_(data=a%3A|sid=[a-f\d]{32};)/},
    {:text=>'/images/logo_phpBB.gif', :certainty=>75},
    {:text=>'<!-- link rel="stylesheet" href="templates/subSilver/subSilver.css'},
    {:text=>'START QUICK HACK - phpBB Statistics MOD'},
    {:text=>'We request you retain the full copyright notice below including the link to www.phpbb.com.'},
    {:text=>'http://www.longluntan.com/zh/phpbb/'},
    {:text=>'phpBB Group" />'}
]
passive do
	m=[]
	if @headers["set-cookie"] =~ /([^ ]+)_u=1; expires/
		p=@headers["set-cookie"].scan(/([^ ]+)_u=1; expires/).flatten.first
		m << {:name=>"phpbb3 _u, _k, _sid cookies", :version=>"3" } if @headers["set-cookie"] =~ /#{p}_u=.*#{p}_k=.*#{p}_sid=[0-9a-z]{32}/

	end
	m
end
aggressive do
	m=[]
	target = URI.join(@base_uri.to_s,"docs/CHANGELOG.html").to_s
	status,url,ip,body,headers=open_target(target)
	unless body.nil?
		if body =~ /<li><a href="[^"]+">Changes since ([0-9\.]+)<\/a><\/li>/
			v=body.scan(/<li><a href="[^"]+">Changes since ([0-9\.]+)<\/a><\/li>/).flatten.first
			m << {:name=>"phpbb changelog", :version=>">"+v }
		end
	end
	m
end
end
