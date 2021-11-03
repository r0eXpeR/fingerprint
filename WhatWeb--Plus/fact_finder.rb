Plugin.define do
    name "fact_finder" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Factfinder/  },
    { :search => 'body', :regexp => /Suggest\.ff/  }
]
end