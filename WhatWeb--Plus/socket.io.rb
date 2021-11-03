Plugin.define do
    name "socket.io" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /socket\.io.*\.js/, :search => 'body'  }
]
end