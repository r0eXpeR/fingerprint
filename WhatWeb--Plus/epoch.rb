Plugin.define do
    name "epoch" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+?href="[^"]+epoch(?:\.min)?\.css/  },
    { :regexp => /epoch(?:\.min)?\.js/, :search => 'body'  }
]
end