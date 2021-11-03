Plugin.define do
    name "用友erp-nc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/nc/servlet/nc.ui.iufo.login.Index'     },
    { :text => '/nc/servlet/nc.ui.iufo.login.Index'    },
    { :text => '用友新世纪'     }
]
end