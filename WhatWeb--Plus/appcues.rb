Plugin.define do
    name "appcues" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /fast\.appcues.com*\.js/, :search => 'body'  }
]
end