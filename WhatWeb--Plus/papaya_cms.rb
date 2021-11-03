Plugin.define do
    name "papaya_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]*.papaya-themes./  }
]
end