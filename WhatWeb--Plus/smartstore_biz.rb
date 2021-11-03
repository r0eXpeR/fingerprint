Plugin.define do
    name "smartstore_biz" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /smjslib\.js/, :search => 'body'  }
]
end