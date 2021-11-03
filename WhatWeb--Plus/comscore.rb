Plugin.define do
    name "comscore" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]* (?:id="comscore"|scr=[^>]+comscore)|\.scorecardresearch\.com.beacon\.js|COMSCORE\.beacon/  },
    { :regexp => /\.scorecardresearch\.com.beacon\.js|COMSCORE\.beacon/, :search => 'body'  }
]
end