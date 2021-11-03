Plugin.define do
    name "wpcache" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--[^>]+wpCache/  },
    { :regexp => /wpCache(?:.([\d.]+))?/,:offset => 1, :search => 'headers[x-powered-by]'  },
    { :regexp => /wpCache/, :search => 'body'  }
]
end