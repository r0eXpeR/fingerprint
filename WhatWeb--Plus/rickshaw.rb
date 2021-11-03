Plugin.define do
    name "rickshaw" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /rickshaw(?:\.min)?\.js/, :search => 'body'  }
]
end