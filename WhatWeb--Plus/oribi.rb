Plugin.define do
    name "oribi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.oribi\.io/  }
]
end