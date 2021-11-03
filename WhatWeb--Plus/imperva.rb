Plugin.define do
    name "imperva" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /._Incapsula_Resource/  }
]
end