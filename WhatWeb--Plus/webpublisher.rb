Plugin.define do
    name "webpublisher" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /WEB\|Publisher/, :search => 'body'  }
]
end