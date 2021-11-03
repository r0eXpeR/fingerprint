Plugin.define do
    name "microsoft_clarity" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /www\.clarity\.ms..+.([\d.]+).clarity\.js/  }
]
end