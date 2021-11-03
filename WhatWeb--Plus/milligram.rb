Plugin.define do
    name "milligram" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+?href="[^"]+milligram(?:\.min)?\.css/  }
]
end