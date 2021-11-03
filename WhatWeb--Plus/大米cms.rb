Plugin.define do
    name "大米cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="damicms'   },
    { :text => 'content="大米CMS'   },
    { :text => '大米CMS-'   }
]
end