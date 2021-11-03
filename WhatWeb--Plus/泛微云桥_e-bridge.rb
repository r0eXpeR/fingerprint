Plugin.define do
    name "泛微云桥_e-bridge" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="泛微云桥e-Bridge,http://wx.weaver.com.cn'   },
    { :text => 'e-Bridge'   },
    { :text => 'wx.weaver'   }
]
end