Plugin.define do
    name "gitlist" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<p>Powered by <a[^>]+>GitList ([\d.]+)/,:offset => 1  }
]
end