Plugin.define do
    name "wordpress_super_cache" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--[^>]+WP-Super-Cache/  }
]
end