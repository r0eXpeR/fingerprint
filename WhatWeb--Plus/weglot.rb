Plugin.define do
    name "weglot" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.weglot\.com/, :search => 'body'  },
    { :regexp => /wp-content.plugins.weglot/, :search => 'body'  }
]
end