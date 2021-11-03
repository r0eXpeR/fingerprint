Plugin.define do
    name "taggbox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.taggbox\.com/, :search => 'body'  },
    { :regexp => /taggbox\.com.app.js.embed\.min\.js(?:\?ver=([\d.]+))?/, :search => 'body',:offset => 1  }
]
end