Plugin.define do
    name "simplo7" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.simplo7\.\w+./  }
]
end