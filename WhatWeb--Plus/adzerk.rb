Plugin.define do
    name "adzerk" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe [^>]*src="[^"]+adzerk\.net/  },
    { :search => 'body', :regexp => /adzerk\.net.ados\.js/  }
]
end