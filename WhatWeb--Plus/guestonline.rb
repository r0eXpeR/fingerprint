Plugin.define do
    name "guestonline" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /ib\.guestonline\.\w+/, :search => 'body'  }
]
end