Plugin.define do
    name "mochikit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /MochiKit(?:\.min)?\.js/  }
]
end