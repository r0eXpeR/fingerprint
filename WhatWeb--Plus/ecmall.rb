Plugin.define do
    name "ecmall" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ECM_ID'   },
    { :text => 'generator" content="ECMall'   }
]
end