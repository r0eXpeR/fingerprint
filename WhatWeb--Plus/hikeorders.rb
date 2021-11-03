Plugin.define do
    name "hikeorders" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /hikeorders\.com.main.assets.js.hko-accessibility\.min\.js/, :search => 'body'  }
]
end