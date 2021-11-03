Plugin.define do
    name "upsellit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /www\.upsellit\.com.active/, :search => 'body'  }
]
end