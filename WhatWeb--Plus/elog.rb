Plugin.define do
    name "elog" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<title>ELOG Logbook Selection<.title>/  }
]
end