Plugin.define do
    name "supersized" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /supersized(?:\.([\d.]*[\d]))?.*\.js/, :search => 'body'  }
]
end