Plugin.define do
    name "anquanbao_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'Anquanbao'  },
    { :text => '/aqb_cc/error/'  }
]
end