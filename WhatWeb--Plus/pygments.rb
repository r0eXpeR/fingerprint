Plugin.define do
    name "pygments" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+pygments\.css["']/  }
]
end