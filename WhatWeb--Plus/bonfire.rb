Plugin.define do
    name "bonfire" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Powered by <a[^>]+href="https?:..(?:www\.)?cibonfire\.com[^>]*>Bonfire v([^<]+)/  }
]
end