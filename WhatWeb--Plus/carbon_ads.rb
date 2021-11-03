Plugin.define do
    name "carbon_ads" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[a-z]+ [^>]*id="carbonads-container/  },
    { :search => 'body', :regexp => /carbonads\.com/  }
]
end