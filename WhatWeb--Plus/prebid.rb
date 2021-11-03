Plugin.define do
    name "prebid" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.prebid\.js/, :search => 'body'  },
    { :regexp => /adnxs\.com.[^"]*(?:prebid|.pb\.js)/, :search => 'body'  }
]
end