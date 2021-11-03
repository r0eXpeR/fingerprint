Plugin.define do
    name "coinlab" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https?:..coinlab\.biz.lib.coinlab\.js\?id=/, :search => 'body'  }
]
end