Plugin.define do
    name "fast_search_for_sharepoint" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<input[^>]+ name="ParametricSearch/  }
]
end