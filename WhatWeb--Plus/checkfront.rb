Plugin.define do
    name "checkfront" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /\.checkfront\.com./, :search => 'body'  }
]
end