Plugin.define do
    name "t-soft" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a href="http:..www\.tsoft\.com\.tr" target="_blank" title="T-Soft E-ticaret Sistemleri">/  }
]
end