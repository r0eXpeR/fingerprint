Plugin.define do
    name "flat_ui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]* href=[^>]+flat-ui(?:\.min)?\.css/  }
]
end