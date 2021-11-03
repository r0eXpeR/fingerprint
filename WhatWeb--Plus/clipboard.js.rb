Plugin.define do
    name "clipboard.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /clipboard(?:-([\d.]+))?(?:\.min)?\.js/, :search => 'body'  }
]
end