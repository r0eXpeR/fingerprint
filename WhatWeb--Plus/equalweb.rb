Plugin.define do
    name "equalweb" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.equalweb\.com.*\.js/, :search => 'body'  }
]
end