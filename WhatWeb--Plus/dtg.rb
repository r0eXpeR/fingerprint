Plugin.define do
    name "dtg" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a[^>]+Site Powered by DTG/  }
]
end