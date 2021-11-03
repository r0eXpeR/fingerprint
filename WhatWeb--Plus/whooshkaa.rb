Plugin.define do
    name "whooshkaa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe src="[^>]+whooshkaa\.com/  }
]
end