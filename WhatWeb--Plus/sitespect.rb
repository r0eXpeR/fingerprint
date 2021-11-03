Plugin.define do
    name "sitespect" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.__ssobj.core\.js/, :search => 'body'  }
]
end