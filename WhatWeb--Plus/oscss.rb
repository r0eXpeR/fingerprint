Plugin.define do
    name "oscss" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<body onload="window\.defaultStatus='oscss templates';/  }
]
end