Plugin.define do
    name "wowza_media_server" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<title>Wowza Media Server \d+ ((?:\w+ Edition )?\d+\.[\d\.]+(?: build\d+)?)?/,:offset => 1  }
]
end