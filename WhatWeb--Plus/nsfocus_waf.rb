Plugin.define do
    name "nsfocus_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'NSFocus'   },
    { :text => '/images/logo/nsfocus.png'    },
    { :text => 'WAF NSFOCUS'    }
]
end