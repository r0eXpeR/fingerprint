Plugin.define do
    name "mustache" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /mustache(?:\.min)?\.js/  }
]
end