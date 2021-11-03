Plugin.define do
    name "thelia" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:link|style|script)[^>]+.assets.frontOffice./  }
]
end