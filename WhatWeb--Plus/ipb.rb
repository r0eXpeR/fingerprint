Plugin.define do
    name "ipb" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+ipb_[^>]+\.css/  },
    { :regexp => /jscripts.ips_/, :search => 'body'  }
]
end