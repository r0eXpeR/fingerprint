Plugin.define do
    name "blip.tv" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<(?:param|embed|iframe)[^>]+blip\.tv.play/  }
]
end