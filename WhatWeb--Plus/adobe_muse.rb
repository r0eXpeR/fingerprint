Plugin.define do
    name "adobe_muse" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Muse(?:$| ?.?(\d[\d.]+))/,:offset => 1, :search => 'body'  }
]
end