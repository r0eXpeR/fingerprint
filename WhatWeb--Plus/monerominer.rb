Plugin.define do
    name "monerominer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]+src=[\'"]https?:..monerominer\.rocks.miner\.php\?siteid=/  }
]
end