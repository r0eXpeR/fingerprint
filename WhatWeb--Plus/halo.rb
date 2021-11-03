Plugin.define do
    name "halo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Halo ([\d.]+)?/, :search => 'body'  }
]
end