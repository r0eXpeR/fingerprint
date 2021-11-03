Plugin.define do
    name "jahia_dx" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<script id="staticAssetAggregatedJavascrip/  }
]
end