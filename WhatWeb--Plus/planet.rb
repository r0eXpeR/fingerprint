Plugin.define do
    name "planet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^Planet(?:.([\d.]+))?/  }
]
end