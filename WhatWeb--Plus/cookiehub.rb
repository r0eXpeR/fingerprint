Plugin.define do
    name "cookiehub" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cookiehub\.net..*\.js/  }
]
end