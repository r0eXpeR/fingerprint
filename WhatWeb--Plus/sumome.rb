Plugin.define do
    name "sumome" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /load\.sumome\.com/, :search => 'body'  }
]
end