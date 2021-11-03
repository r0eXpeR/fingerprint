Plugin.define do
name "AdaptCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AdaptCMS is a PHP CMS that is made for complete control of your website, easiness of use and easily adaptable to any type of website"
website "http://www.adaptsoftware.org/article/1/Projects/AdaptCMS/"
dorks [
'"powered by AdaptCMS"'
]
matches [
    {:search=>"headers", :text=>'adaptcms'},
    {:text=>'AdaptCMS")'},
    {:version=>/Powered by <a href="http:\/\/www.adaptcms.com">[<b>]*AdaptCMS([^<]*)<\/a>/}
]
end
