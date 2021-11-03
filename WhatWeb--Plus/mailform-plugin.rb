Plugin.define do
name "MailForm-Plugin"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "PHP contact form"
website "http://www.h-fj.com/blog/mtplgdoc/"
dorks [
'"powered by MailForm"'
]
matches [
{ :version=>/<a href="http:\/\/www.h-fj.com\/blog\/mtplgdoc\/mailformv[\d\.\_]+.php"[^>]*>Powered by Mailform plugin[s]? V([\d\.]+)<\/a>/i },
{ :version=>/<a href="http:\/\/www.h-fj.com\/blog\/mtplgdoc\/mailformv[\d\.\_]+.php"[^>]*>Powered by Mailform V([\d\.]+)<\/a>/i },
]
end
