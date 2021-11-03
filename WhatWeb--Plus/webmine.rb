Plugin.define do
    name "webmine" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]+src=[\'"]https:..webmine\.cz.miner\?key=/  }
]
end