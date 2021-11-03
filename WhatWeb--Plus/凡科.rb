Plugin.define do
    name "凡科" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="凡科'   },
    { :text => '凡科互联网科技股份有限公司'   }
]
end