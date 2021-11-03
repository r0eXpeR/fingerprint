Plugin.define do
    name "essential_js_2" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+ class ?= ?"(?:e-control|[^"]+ e-control)(?: )[^"]* e-lib\b/  }
]
end