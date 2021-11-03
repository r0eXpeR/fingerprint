Plugin.define do
name "Fastpublish-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "fastpublish CMS proudly presents the new Content Management System with the special features: easy to use and fast to publish."
website "http://www.fastpublish.org"
dorks [
'"Securitycode: (please insert the numbers from the picture into the following field)"'
]
matches [
    {:text=>'content="fastpublish'},
    {:url=>"favicon.ico", :md5=>"e95aa1d29e576c9ebdb08e0c5160cdfa"},
    {:version=>/<meta name="Generator" content="fastpublish CMS ([^"]{1,15})">/}
]
end
