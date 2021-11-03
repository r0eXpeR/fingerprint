Plugin.define do
    name "mhonarc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<!-- MHonArc v([0-9.]+) -->/  }
]
end