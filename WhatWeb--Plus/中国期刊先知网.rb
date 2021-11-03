Plugin.define do
    name "中国期刊先知网" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<img src="images/logoknow.png'   },
    { :text => '本系统由<span class="STYLE1" ><a href="http://www.firstknow.cn'   }
]
end