Plugin.define do
    name "zanox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<img [^>]*src="[^"]+ad\.zanox\.com/  },
    { :regexp => /zanox\.com.scripts.zanox\.js$/, :search => 'body'  }
]
end