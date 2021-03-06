Plugin.define do
name "SazCart"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SazCart is a simple & powerful shopping cart script. With SazCart you can quickly and easily setup an online store. Then customize it to exactly how you want it to work & look."
website "http://www.sazcart.com/"
dorks [
'"powered by SazCart"'
]
matches [
{ :regexp=>/[^&]+&raquo; Powered by SazCart<\/title>/ },
{ :text=>'<a href="http://www.sazcart.com">Powered by SazCart</a> | <a href="http://www.sazcart.com">Copyright &#169; 2005 - 2006 SazCart.com</a>  </div>' },
]
end
