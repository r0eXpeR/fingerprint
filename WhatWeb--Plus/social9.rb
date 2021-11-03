Plugin.define do
    name "social9" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /social9\.com..+\.js(?:\?ver=([\d.]+))?/, :search => 'body'  }
]
end