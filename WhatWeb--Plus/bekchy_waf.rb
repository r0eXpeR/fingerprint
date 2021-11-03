Plugin.define do
    name "bekchy_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Bekchy - Access Denided'  },
    { :text => 'https://bekchy.com/report'  }
]
end