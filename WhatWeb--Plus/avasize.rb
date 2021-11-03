Plugin.define do
    name "avasize" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https?:..cdn\.avasize\.com./, :search => 'body'  }
]
end