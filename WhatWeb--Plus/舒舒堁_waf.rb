Plugin.define do
    name "滴滴云_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'DiDi-SLB'  },
    { :text => 'sec-waf.didiyun.com'  },
    { :text => 'www.didiyun.com/static/cloudwafstatic'  }
]
end