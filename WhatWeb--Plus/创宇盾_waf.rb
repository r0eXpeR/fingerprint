Plugin.define do
    name "创宇盾_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'http://www.365cyd.com'  },
    { :text => 'https://www.365cyd.com'  }
]
end