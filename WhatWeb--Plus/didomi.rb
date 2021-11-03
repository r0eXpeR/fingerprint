Plugin.define do
    name "didomi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /sdk\.privacy-center\.org..*.loader\.js/, :search => 'body'  }
]
end