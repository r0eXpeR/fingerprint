Plugin.define do
    name "segmentstream" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.segmentstream\.com/, :search => 'body'  }
]
end