Plugin.define do
    name "basket.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /basket.*\.js/, :search => 'body', :certainty => 10  }
]
end