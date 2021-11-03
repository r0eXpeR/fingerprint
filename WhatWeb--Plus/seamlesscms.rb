Plugin.define do
    name "seamlesscms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Seamless\.?CMS/, :search => 'body'  }
]
end