Plugin.define do
    name "formitable" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /formitable\.js(?:\?ver=([\d.]+))?/, :search => 'body',:offset => 1  },
    { :search => 'body', :regexp => /cdn\.formitable\.com/  }
]
end