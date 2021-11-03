Plugin.define do
    name "revolvermaps" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.revolvermaps\.com/, :search => 'body'  }
]
end