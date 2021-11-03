Plugin.define do
    name "bulma" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+?href="[^"]+bulma(?:\.min)?\.css/  }
]
end