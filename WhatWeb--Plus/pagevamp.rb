Plugin.define do
    name "pagevamp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-servedby]', :regexp => /pagevamp/  }
]
end