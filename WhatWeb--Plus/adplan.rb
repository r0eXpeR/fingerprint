Plugin.define do
    name "adplan" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^https?:..(?!o\.)\w+\.advg\.jp./, :search => 'body'  },
    { :regexp => /^https?:..[^.]+\.adplan7\.com./, :search => 'body'  }
]
end