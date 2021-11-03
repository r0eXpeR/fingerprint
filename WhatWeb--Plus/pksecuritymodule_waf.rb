Plugin.define do
    name "pksecuritymodule_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'A safety critical request was discovered and blocked'  },
    { :text => 'https://www.kitnetwork'  }
]
end