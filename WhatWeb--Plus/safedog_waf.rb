Plugin.define do
    name "safedog_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'Safedog'  },
    { :search => 'headers', :text => 'WAF/2'  },
    { :text => '404.safedog.cn/sitedog_stat.html'  },
    { :text => 'safedog.cn/images/safedogsite/broswer_logo.jpg'  }
]
end