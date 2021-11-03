Plugin.define do
    name "ticimax" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.ticimax\.com./, :search => 'body'  }
]
end