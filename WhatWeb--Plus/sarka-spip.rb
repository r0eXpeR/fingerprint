Plugin.define do
    name "sarka-spip" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /Sarka-SPIP(?:\s([\d.]+))?/  }
]
end