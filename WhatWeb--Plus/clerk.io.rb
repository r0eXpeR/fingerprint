Plugin.define do
    name "clerk.io" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /\.clerk\.io./  }
]
end