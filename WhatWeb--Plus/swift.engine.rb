Plugin.define do
    name "swift.engine" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /swift\.engine/, :search => 'headers[x-powered-by]'  }
]
end