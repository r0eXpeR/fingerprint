Plugin.define do
    name "git" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\bgit.([\d.]+\d)/, :search => 'body',:offset => 1  }
]
end