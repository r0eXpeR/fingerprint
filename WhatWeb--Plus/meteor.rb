Plugin.define do
    name "meteor" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+__meteor-css__/  }
]
end