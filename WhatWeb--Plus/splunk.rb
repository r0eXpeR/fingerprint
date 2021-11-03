Plugin.define do
name "Splunk"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Splunk indexes and makes searchable data from any app, server or network device in real time including logs, config files, messages, alerts, scripts and metrics."
website "http://www.splunk.com"
dorks [
'intitle:"Login - Splunk" "If you\'ve forgotten your username or password, please contact your Splunk"'
]
matches [
    {:certainty=>50, :search=>'body', :regexp=>/Splunk Inc/},
    {:certainty=>75, :text=>'<meta name="author" content="Splunk Inc." />'},
    {:os=>/var CONFIG = \{"licenseType": "[^\"]+", "os_name": "([^"]+)", "locale":/},
    {:regexp=>/<p class="footer">&copy; [-\d]+ Splunk Inc\.(?: Splunk ([\d\.]+(?: build [\d\.]*\d)?))?[^<]*<.p>/,:offset=>1},
    {:search=>"headers[set-cookie]", :regexp=>/session_id_8000=[a-f\d]{32};/},
    {:string=>/var CONFIG = \{"licenseType": "[^\"]+", "os_name": "[^"]+", "locale":[^\}]+"installType": "([^"]+)"/},
    {:text=>"<p><span>First time logging in?</span> Splunk's default credentials are </p><p>username: <span>admin</span><br />password: <span>changeme</span></p><p>If you've forgotten your username or password, please contact your Splunk administrator.</p>"},
    {:text=>'Splunk.util.normalizeBoolean'},
    {:url=>"/en-US/favicon.ico", :md5=>"f7728520c81b7a303d8e54d282e13a16"},
    {:version=>/<p class="footer">&copy; 2005-20[\d]{2} Splunk Inc\. Splunk ([^<]+)\.<\/p>/}
]
end
