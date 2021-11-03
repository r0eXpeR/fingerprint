Plugin.define do
    name "rewardful" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /r\.wdfl\.co/, :search => 'body'  }
]
end