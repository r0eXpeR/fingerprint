Plugin.define do
    name "etherpad" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.ep_etherpad-lite./, :search => 'body'  },
    { :search => 'headers[server]', :regexp => /^Etherpad/  }
]
end