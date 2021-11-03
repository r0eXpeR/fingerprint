Plugin.define do
name "SQL-Buddy"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SQL Buddy - Web based MySQL administration"
website "http://www.sqlbuddy.com/"
dorks [
'intitle:"SQL Buddy" "Host" "Username" "Password" "Database" -sbconfig -site:www.sqlbuddy.com -site:code.google.com',
'inurl:"sqlbuddy/login.php" "Host" "Username" "Password" "Database" -sbconfig'
]
passive do
	m=[]
	if @body =~ /<td colspan="2"><div class="loginheader"><h3><strong>Login<\/strong><\/h3><a href="http:\/\/www\.sqlbuddy\.com\/help\/"/
		m << { :name=>"help link" }
		if @body =~ /<link type="text\/css" rel="stylesheet" href="themes\/bittersweet\/css\/main\.css\?ver=([\d\_]+)" \/>/
			m << { :version=>"#{$1}".gsub!(/_/, ".") }
		end
	end
	m
end
end
