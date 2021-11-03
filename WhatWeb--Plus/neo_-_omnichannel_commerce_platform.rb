Plugin.define do
    name "neo_-_omnichannel_commerce_platform" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /jet-neo/, :search => 'headers[powered]'  }
]
end