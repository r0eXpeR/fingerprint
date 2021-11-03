Plugin.define do
    name "mondo_media" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Mondo Shop/, :search => 'body'  }
]
end