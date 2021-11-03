Plugin.define do
    name "sqreen" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-protected-by]', :regexp => /^Sqreen$/  }
]
end