Plugin.define do
    name "启明星辰天清汉马usg防火墙" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/cgi-bin/webui?op=get_product_model'   },
    { :text => '<title>天清汉马USG防火墙</title>'   },
    { :text => '天清汉马USG'   }
]
end