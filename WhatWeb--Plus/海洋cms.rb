Plugin.define do
    name "海洋cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by SeaCms'   },
    { :text => 'content="seacms'   },
    { :text => 'seacms'   }
]
end