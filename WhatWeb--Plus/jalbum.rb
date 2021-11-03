Plugin.define do
    name "jalbum" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /JAlbum( [\d.]+)?/, :search => 'body',:offset => 1  }
]
end