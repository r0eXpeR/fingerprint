Plugin.define do
    name "strato" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a href="http:..www\.strato\.de." target="_blank">/  }
]
end