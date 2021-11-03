Plugin.define do
name "Modernizr"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Modernizr adds classes to the <html> element which allow you to target specific browser functionality in your stylesheet. You don't actually need to write any Javascript to use it. [JavaScript]"
website "http://www.modernizr.com/"
matches [
    {:offset=>1, :search=>'body', :regexp=>/([\d.]+)?.modernizr(?:\.([\d.]+))?.*\.js/},
    {:regexp=>/<script [^>]*src=["'][^>]*modernizr[^>]*\.js/i},
    {:version=>/<script [^>]*src=["'][^>]*modernizr-([^>]+)\.js/i }
]
end
