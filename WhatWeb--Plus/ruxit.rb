Plugin.define do
    name "ruxit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /ruxitagentjs/, :search => 'body'  }
]
end