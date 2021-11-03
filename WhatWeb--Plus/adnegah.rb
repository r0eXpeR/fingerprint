Plugin.define do
    name "adnegah" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe [^>]*src="[^"]+adnegah\.net/  },
    { :regexp => /[^a-z]adnegah.*\.js$/, :search => 'body'  },
    { :search => 'headers[x-advertising-by]', :regexp => /adnegah\.net/  }
]
end