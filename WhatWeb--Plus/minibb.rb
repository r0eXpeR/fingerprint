Plugin.define do
name "MiniBB"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MiniBB is a free standalone open source program for building your own Internet forum."
website "http://www.minibb.com/"
dorks [
'"Powered by MiniBB"'
]
matches [
    {:regexp=>/<a href="[^"]+minibb[^<]+<.a>[^<]+\n<!--End of copyright link/},
    {:regexp=>/Powered by <a[^>]+href="http:\/\/www.minibb.(com|net)"[^>]*>miniBB[^<]{0,15}<\/a>/i},
    {:text=>'<td class="tbTransparent txtR"><!--miniBB Copyright link. You are not allowed to remove it if you have not purchased the Commercial License. Refer to COPYING file for more-->'},
    {:version=>/Powered by <a[^>]+href="http:\/\/www.miniBB.(com|net)"[^>]*>miniBB ([^<]{1,7})<\/a>/i, :offset=>1 }
]
end
