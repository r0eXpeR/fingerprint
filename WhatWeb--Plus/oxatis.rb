Plugin.define do
    name "oxatis" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Oxatis\s\(www\.oxatis\.com\)$/, :search => 'body'  }
]
end