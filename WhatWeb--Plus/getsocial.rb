Plugin.define do
    name "getsocial" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /api\.at\.getsocial\.io/  }
]
end