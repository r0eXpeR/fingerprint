Plugin.define do
name "Brightcove"
authors [
  "Peter van der Laan", 

]
version "0.1"
description "Brightcove Inc., a leading global provider of cloud services for video, offers a family of products that revolutionize the way organizations deliver video experiences."
website "https://www.brightcove.com/"
matches [
{:regexp=>/goku\.brightcove\.com|admin\.brightcove\.com\/js/},
]
end
