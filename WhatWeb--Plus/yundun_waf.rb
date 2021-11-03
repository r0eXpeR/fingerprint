Plugin.define do
    name "yundun_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'YUNDUN'  },
    { :text => 'Blocked by YUNDUN Cloud WAF'  },
    { :text => 'yundun.com/yd_http_error'  }
]
end