Plugin.define do
    name "拓尔思SSO" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :serach => 'headers', :text => 'trsidsssosessionid'   }
]
end