Plugin.define do
    name "vanilla" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<body id="(?:DiscussionsPage|vanilla)/  },
    { :regexp => /Vanilla/, :search => 'headers[x-powered-by]'  }
]
end