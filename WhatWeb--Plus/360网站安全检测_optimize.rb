Plugin.define do
    name "360网站安全检测" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:text=>'360网站安全检测'},
    {:text=>'href="http://webscan.360.cn"'},
    {:text=>'webscan.360.cn/status/pai/hash'}
]
end