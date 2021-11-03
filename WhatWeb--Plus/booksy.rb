Plugin.define do
    name "booksy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /booksy\.com.widget.code\.js/, :search => 'body'  }
]
end