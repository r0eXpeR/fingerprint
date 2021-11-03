Plugin.define do
    name "red_hat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Red Hat/, :search => 'headers[x-powered-by]'  },
    { :search => 'headers[server]', :regexp => /Red Hat/  }
]
end