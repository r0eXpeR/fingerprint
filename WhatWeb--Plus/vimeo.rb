Plugin.define do
name "Vimeo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Vimeo.com video player"
website "http://vimeo.com/"
matches [
    {:regexp=>/(?:<(?:param|embed)[^>]+vimeo\.com.moogaloop|<iframe[^>]player\.vimeo\.com)/},
    {:regexp=>/<(param|object|embed) [^>]+vimeo\.com\/moogaloop/i},
    {:regexp=>/<iframe [^>]*src=['"]https?:\/\/player\.vimeo\.com\/video\//}
]
end
