Plugin.define do
    name "art_of_defence_hyperguard_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'WODSESSION='  }
]
end