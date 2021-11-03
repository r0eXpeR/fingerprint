Plugin.define do
    name "scorpion" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+id="HSScorpion/  },
    { :regexp => /cdn.cxc.scorpion.direct/, :search => 'body'  }
]
end