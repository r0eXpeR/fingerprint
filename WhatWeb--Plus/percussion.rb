Plugin.define do
    name "percussion" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:Percussion|Rhythmyx)/, :search => 'body'  },
    { :regexp => /<[^>]+class="perc-region/  }
]
end