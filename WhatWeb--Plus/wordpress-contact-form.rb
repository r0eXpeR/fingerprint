Plugin.define do
name "Wordpress-Contact-Form"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WordPress Contact Form plugin - Contact Form 7 can manage multiple contact forms, plus you can customize the form and the mail contents flexibly with simple markup. The form supports Ajax-powered submitting, CAPTCHA, Akismet spam filtering and so on."
website "http://wordpress.org/extend/plugins/contact-form-7/"
matches [
{ :version=>/<input type="hidden" name="_wpcf([\d\.]+)" value="1" \/>/ }
]
passive do
	m=[]
	if @body =~ /<input type="hidden" name="_wpcf([\d]+)_version" value="[\d\.]+" \/>/
		version=@body.scan(/<input type="hidden" name="_wpcf([\d]+)_version" value="([\d\.]+)" \/>/)[0][0]+"."+@body.scan(/<input type="hidden" name="_wpcf[\d]+_version" value="([\d\.]+)" \/>/)[0][0]
		m << { :version=>version }
	end
	m
end
end
