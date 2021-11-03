Plugin.define do
    name "paypal" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<input[^>]+_s-xclick/  },
    { :regexp => /paypalobjects\.com/, :search => 'body'  }
]
end