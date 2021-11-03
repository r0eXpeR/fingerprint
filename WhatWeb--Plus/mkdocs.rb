Plugin.define do
    name "mkdocs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /^mkdocs-([\d.]+)/, :search => 'body'  }
]
end