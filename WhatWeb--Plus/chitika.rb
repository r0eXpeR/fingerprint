Plugin.define do
    name "chitika" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /scripts\.chitika\.net./, :search => 'body'  }
]
end