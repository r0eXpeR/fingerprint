Plugin.define do
    name "stripe" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<input[^>]+data-stripe/  },
    { :search => 'body', :regexp => /js\.stripe\.com/  }
]
end