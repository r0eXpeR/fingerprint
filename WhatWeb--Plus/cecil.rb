Plugin.define do
    name "cecil" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Cecil(?: ([0-9.]+))?$/,:offset => 1, :search => 'body'  }
]
end