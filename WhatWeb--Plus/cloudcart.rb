Plugin.define do
    name "cloudcart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.cloudcart-(?:assets|storage)./, :search => 'body'  },
    { :regexp => /^CloudCart LLC$/, :search => 'body'  }
]
end