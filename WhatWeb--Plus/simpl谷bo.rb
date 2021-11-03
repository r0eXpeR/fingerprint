Plugin.define do
    name "simplébo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-servedby]', :regexp => /simplebo/  }
]
end