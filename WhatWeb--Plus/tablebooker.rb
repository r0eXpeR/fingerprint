Plugin.define do
    name "tablebooker" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /reservations\.tablebooker\.\w+./  }
]
end