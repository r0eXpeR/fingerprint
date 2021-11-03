Plugin.define do
    name "协众oa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :serach => 'headers', :text => 'CNOAOASESSID'     },
    { :serach => 'headers', :text => 'CNOAOASESSID'    },
    { :text => 'Powered by CNOA.CN'     },
    { :text => 'Powered by 协众OA'     },
    { :text => 'Powered by 协众OA'    },
    { :text => 'admin@cnoa.cn'     }
]
end