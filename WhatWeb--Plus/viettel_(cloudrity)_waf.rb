Plugin.define do
    name "viettel_(cloudrity)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'viettel waf system'  },
    { :text => 'viettel waf</title>'  }
]
end