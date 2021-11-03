Plugin.define do
    name "信达oa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'http://www.xdoa.cn</a>'     },
    { :text => 'http://www.xdoa.cn</a>'    },
    { :text => '北京创信达科技有限公司'     }
]
end