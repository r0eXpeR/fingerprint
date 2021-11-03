Plugin.define do
    name "iweb" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^iWeb( [\d.]+)?/  }
]
end