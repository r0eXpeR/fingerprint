Plugin.define do
    name "veoxa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<img [^>]*src="[^"]+tracking\.veoxa\.com/  },
    { :search => 'body', :regexp => /tracking\.veoxa\.com/  }
]
end