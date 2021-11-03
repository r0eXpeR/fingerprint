Plugin.define do
    name "sizmek" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<a [^>]*href="[^.]*..[^.]*serving-sys\.com.|<img [^>]*src="[^.]*..[^.]*serving-sys\.com.)/  },
    { :search => 'body', :regexp => /serving-sys\.com./  }
]
end