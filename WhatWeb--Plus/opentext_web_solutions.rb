Plugin.define do
    name "opentext_web_solutions" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--[^>]+published by Open Text Web Solutions/  }
]
end