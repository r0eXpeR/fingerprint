Plugin.define do
    name "lodash" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /lodash.*\.js/, :search => 'body'  }
]
end