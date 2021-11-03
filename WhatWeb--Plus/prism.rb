Plugin.define do
    name "prism" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /prism\.js/, :search => 'body'  }
]
end