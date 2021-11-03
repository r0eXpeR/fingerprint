Plugin.define do
    name "宝塔-BT.cn" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:text=>'app.bt.cn/static/app.png'},
    {:text=>'安全入口校验失败'},
    {:text=>'宝塔网站防火墙'},
    {:text=>'这是误报，请联系宝塔'}
]
end