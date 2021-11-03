Plugin.define do
    name "spotx" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /js\.spotx\.tv/, :search => 'body'  }
]
end