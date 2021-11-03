Plugin.define do
    name "contentful" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+(?:https?:)?..(?:assets|downloads|images|videos)\.(?:ct?fassets\.net|contentful\.com)/  }
]
end