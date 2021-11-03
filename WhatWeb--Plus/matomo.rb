Plugin.define do
	name "Matomo"
	authors [
		"Andrew Horton", 

	]
	version "0.1"
	description "Matomo is the leading open alternative to Google Analytics that gives you full control over your data. Matomo lets you easily collect data from websites, apps & the IoT and visualise this data and extract insights. Privacy is built-in. Matomo was formerly known as Piwik, and is developed in PHP."
	website "https://matomo.org"
	dorks [
	'intitle:"sign in - Matomo"'
	]
matches [
    {:name=>"CHANGELOG.md", :url=>"/CHANGELOG.md", :status=>200, :text=>"# Matomo Platform Changelog"},
    {:name=>"MATOMO_SESSID Cookie", :text=>"MATOMO_SESSID", :search=>"headers[Set-Cookie]"},
    {:name=>"Title", :text=>"<title>Sign in - Matomo</title>"},
    {:name=>"X-Matomo-Request-Id Header", :text=>"", :search=>"headers[X-Matomo-Request-Id]"},
    {:name=>"enableLinkTracking", :text=>"_paq.push(['enableLinkTracking'])"},
    {:regexp=>/app-id=org\.piwik\.mobile2/, :search=>'body'},
    {:search=>'body', :regexp=>/(?:Matomo|Piwik) - Open Source Web Analytics/},
    {:search=>'body', :regexp=>/app-id=737216887/},
    {:search=>'body', :regexp=>/piwik\.js|piwik\.php/}
]
	aggressive do
	  m = []
      target = URI.join(@base_uri.to_s,"/CHANGELOG.md").to_s
      status,url,ip,body,headers = open_target(target)
      versions = body.scan(/## Matomo ([\.0-9]+)/)
      if versions
		m << { :name => "Version from CHANGELOG.md", :version => versions.first }
	  end
	end
end
