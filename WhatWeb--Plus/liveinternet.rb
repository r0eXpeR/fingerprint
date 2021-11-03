Plugin.define do
    name "liveinternet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--.LiveInternet-->/  },
    { :regexp => /<!--LiveInternet counter-->/  },
    { :regexp => /<a href="http:..www\.liveinternet\.ru.click/  },
    { :regexp => /<script [^>]*>[\s\S]*..counter\.yadro\.ru.hit/  }
]
end