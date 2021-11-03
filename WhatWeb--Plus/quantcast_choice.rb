Plugin.define do
    name "quantcast_choice" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /quantcast\.mgr\.consensu\.org/  }
]
end