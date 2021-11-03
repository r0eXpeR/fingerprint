Plugin.define do
name "YouTube"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Embedded YouTube video"
website "http://youtube.com/"
matches [
    {:regexp=>/<(?:param|embed|iframe)[^>]+youtube(?:-nocookie)?\.com.(?:v|embed)/},
    {:regexp=>/<(param|embed) [^>]*youtube\.com\/v/i},
    {:regexp=>/<iframe [^>]*src=['"]https?:\/\/(www\.)?youtube\.com\/embed\//}
]
end
