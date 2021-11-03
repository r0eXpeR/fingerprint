Plugin.define do
    name "lede" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a [^>]*href="[^"]+joinlede.com/  },
    { :regexp => /https?\:\.\.lede-admin/, :search => 'body'  }
]
end