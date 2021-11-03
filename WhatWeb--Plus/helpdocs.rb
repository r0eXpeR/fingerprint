Plugin.define do
    name "helpdocs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.helpdocs\.io/, :search => 'body'  }
]
end