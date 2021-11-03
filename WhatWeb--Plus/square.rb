Plugin.define do
    name "square" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /js\.squareup\.com/  }
]
end