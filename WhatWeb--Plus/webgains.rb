Plugin.define do
    name "webgains" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /analytics\.webgains\.io/  }
]
end