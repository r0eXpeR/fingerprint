Plugin.define do
    name "sellix" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.sellix\.io.static.js.embed\.js/  }
]
end