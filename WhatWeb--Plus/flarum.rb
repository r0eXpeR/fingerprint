Plugin.define do
    name "flarum" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div id="flarum-loading/  }
]
end