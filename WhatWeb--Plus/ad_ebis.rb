Plugin.define do
    name "ad_ebis" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- EBiS common tag/  },
    { :regexp => /<!-- EBiS contents tag/  },
    { :regexp => /<!-- Tag EBiS/  },
    { :regexp => /<!--EBiS tag/  }
]
end