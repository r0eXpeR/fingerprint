Plugin.define do
    name "微普外卖点餐系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Author" content="微普外卖点餐系统'   },
    { :text => 'Powered By 点餐系统'   },
    { :text => 'userfiles/shoppics/'   }
]
end