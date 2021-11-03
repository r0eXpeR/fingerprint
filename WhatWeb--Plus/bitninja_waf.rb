Plugin.define do
    name "bitninja_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<title>Visitor anti-robot validation'  },
    { :text => 'Security check by BitNinja'  },
    { :text => 'your IP will be removed from BitNinja'  }
]
end