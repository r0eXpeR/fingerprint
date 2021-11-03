Plugin.define do
    name "360_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => '360wzws'  },
    { :search => 'headers', :text => 'X-Powered-By-360wzb'  },
    { :search => 'headers', :text => 'wangzhan.360.cn'  },
    { :text => '.wzws.waf.cgi.'  },
    { :text => 'transfer.is.blocked'  }
]
end