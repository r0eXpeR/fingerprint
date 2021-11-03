Plugin.define do
    name "53客服" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:text=>'tb.53kf.com/code/'},
    {:url=>'/new/Client/Css/style.css', :text=>'worker_info dt'},
    {:url=>'/new/Client/Image/icon-operating-5.png', :md5=>'fd8ee64400da8b5bafa0ee42019efe99'},
    {:url=>'/new/Client/Script/webCore.js', :text=>'webCore.min.js'}
]
end