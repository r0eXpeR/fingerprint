Plugin.define do
    name "gitbook" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /GitBook ([\d.]+)?/, :search => 'body'  }
]
end