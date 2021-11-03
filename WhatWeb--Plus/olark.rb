Plugin.define do
    name "olark" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https?:\.\.static\.olark\.com\.jsclient\.loader1\.js/, :search => 'body'  }
]
end