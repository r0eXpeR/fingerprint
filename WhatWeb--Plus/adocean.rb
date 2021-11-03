Plugin.define do
    name "adocean" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /adocean\.pl.files.js.ado\.js/, :search => 'body'  },
    { :search => 'body', :certainty => 80, :regexp => /adocean\.pl/  }
]
end