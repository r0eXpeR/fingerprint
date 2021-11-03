Plugin.define do
    name "combeenation" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]+src="[^>]+portal\.combeenation\.com/  }
]
end