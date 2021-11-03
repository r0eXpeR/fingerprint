Plugin.define do
    name "tiddlywiki" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]*type=[^>]text\.vnd\.tiddlywiki/  },
    { :search => 'body', :regexp => /^TiddlyWiki created by Jeremy Ruston/  },
    { :search => 'body', :regexp => /^TiddlyWiki$/  }
]
end