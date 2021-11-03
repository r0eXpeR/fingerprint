Plugin.define do
    name "斐讯fortress" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<meta name="author" content="上海斐讯数据通信技术有限公司" />'   },
    { :text => '斐讯Fortress防火墙'   }
]
end