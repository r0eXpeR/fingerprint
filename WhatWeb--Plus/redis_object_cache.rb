Plugin.define do
    name "redis_object_cache" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--\s+Performance optimized by Redis Object Cache/  }
]
end