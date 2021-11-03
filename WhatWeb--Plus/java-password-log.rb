Plugin.define do
name "Java-Password-Log"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin detects Java password.log files and retrieves the usernname, password and URL."
dorks [
'password END_FILE ext:log'
]
passive do
	m=[]
	if @body =~ /END_FILE/
		if @body =~ /^name: = "([^\"]+)";[\r]?\npassword: = "([^\"]+)";[\r]?\nURL: = "([^\"]+)";/
			modules=@body.scan(/^name: = "([^\"]+)";[\r]?\npassword: = "([^\"]+)";[\r]?\nURL: = "([^\"]+)";/)
			m << {:module=>modules}
		end
	end
	m
end
end
