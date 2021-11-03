Plugin.define do
    name "sobi_2" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<!-- start of Sigsiu Online Business Index|<div[^>]* class="sobi2)/  }
]
end