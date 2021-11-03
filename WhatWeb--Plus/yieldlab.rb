Plugin.define do
    name "yieldlab" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /^https?:..(?:[^.]+\.)?yieldlab\.net./  }
]
end