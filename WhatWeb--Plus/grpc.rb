Plugin.define do
    name "grpc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^application\.grpc/, :search => 'headers[content-type]'  }
]
end