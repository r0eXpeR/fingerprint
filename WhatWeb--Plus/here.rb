Plugin.define do
    name "here" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https?:..js\.cit\.api\.here\.com.se.([\d.]+)\./, :search => 'body',:offset => 1  }
]
end