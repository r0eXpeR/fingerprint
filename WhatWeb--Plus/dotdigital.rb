Plugin.define do
    name "dotdigital" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /js._dmptv([\d.]+)\.js/  }
]
end