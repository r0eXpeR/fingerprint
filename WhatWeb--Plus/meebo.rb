Plugin.define do
    name "meebo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<iframe id="meebo-iframe"|Meebo\('domReady'\))/  }
]
end