Plugin.define do
    name "金龙卡金融化一卡通网站查询子系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'location.href="homeLogin.action'   },
    { :text => '金龙卡金融化一卡通网站查询子系统'   }
]
end