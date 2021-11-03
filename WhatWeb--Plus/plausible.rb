Plugin.define do
    name "plausible" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /plausible\.io.js.plausible\.js/  }
]
end