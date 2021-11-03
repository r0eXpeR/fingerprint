Plugin.define do
name "Email"
authors [
  "Andrew Horton",

]
version "0.6"
description "Extract email addresses. Find valid email address and syntactically invalid email addresses from mailto: link tags. We match syntactically invalid links containing mailto: to catch anti-spam email addresses, eg. bob at gmail.com. This uses the simplified email regular expression from http://www.regular-expressions.info/email.html for valid email address matching."
matches [
	{ :string=>/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i },
	{ :string=>/<[^>]+href=[^>]*mailto:([^\'\"\?>]+)[^>]*>/i },
]
end
