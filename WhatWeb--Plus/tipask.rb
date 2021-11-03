Plugin.define do
    name "tipask" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="tipask'   },
    { :url => '/css/default/category_title.png', :md5 => '795c30d270d0886d399afb38bcf0b049'   },
    { :url => '/css/default/q_title.png', :md5 => '61d5c706cd001644d79752de115223a3'   },
    { :url => '/robots.txt', :text => 'robots.txt for TIPASK'   }
]
end