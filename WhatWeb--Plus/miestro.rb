Plugin.define do
    name "miestro" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.+\.miestro\.com/, :search => 'body'  },
    { :regexp => /\.miestro\.com/, :search => 'body'  }
]
end