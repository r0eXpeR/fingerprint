Plugin.define do
name "htpasswd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description ".htpasswd is a flat-file used to store usernames and password for basic authentication of Apache HTTP Server. This plugin attempts to retrievs credentials from .htpasswd files in user:pass format. - More info: http://en.wikipedia.org/wiki/Htpasswd"
dorks [
'inurl:htpasswd ext:txt',
'filetype:htpasswd htpasswd',
'filetype:htpasswd inurl:htpasswd'
]
passive do
m=[]
if @base_uri.path =~ /htpasswd/i and @body =~ /^([0-9a-z\-_]{2,255}:[^\r^\n^\s^:]{1,80})[\r\n\s:]*/i
	@body.scan(/^([0-9a-z\-_]{2,255}:[^\r^\n^\s^:]{1,80})[\r\n\s:]*/i).each do |line|
	if line.to_s =~ /^admin:\$apr1\$/
		if line.to_s == "admin:$apr1$Ev0Cp...$6R55smBmW.t.uDr01ao5Q."
			m << { :account=>"admin:admin" }
		elsif line.to_s == "admin:$apr1$XNQFp...$HCpZx9aTaQOD1vVFeGXUF1"
			m << { :account=>"admin:password" }
		elsif line.to_s == "admin:$apr1$94APp...$Vs/UEEdcnanhzIvFweeVd."
			m << { :account=>"admin:password1" }
		elsif line.to_s == "admin:$apr1$WqFQp...$xgPFU8Ao92A7eYg8J2cYx/"
			m << { :account=>"admin:Password" }
		elsif line.to_s == "admin:$apr1$3fdSp...$qq4wV9G75szLU/hJsGHYQ1"
			m << { :account=>"admin:12345" }
		elsif line.to_s == "admin:$apr1$b5XTp...$BcezBLeXvd7QT5Rlw.8Ki1"
			m << { :account=>"admin:123456" }
		elsif line.to_s == "admin:$apr1$WRMUp...$THfv/Ixp9HKpKH34dtzO3."
			m << { :account=>"admin:qwerty" }
		elsif line.to_s == "admin:$apr1$cT/Vp...$aOLWPBRTibzuNEhVpiw7V1"
			m << { :account=>"admin:abc123" }
		elsif line.to_s == "admin:$apr1$5PaVp...$gYaTwDl0yviTysvEY4REn0"
			m << { :account=>"admin:letmein" }
		else
			m << { :account=>line.to_s }
		end
	else
		m << { :account=>line.to_s }
	end
	end
end
m
end
end
