Plugin.define do
    name "less" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+ rel="stylesheet.less/  }
]
end