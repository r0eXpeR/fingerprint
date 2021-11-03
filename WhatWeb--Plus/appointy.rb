Plugin.define do
    name "appointy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]+src="?https:..[\w\d\-]+\.appointy\.com/  }
]
end