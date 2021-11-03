Plugin.define do
    name "jitsi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /lib-jitsi-meet.*\.js/, :search => 'body'  }
]
end