Plugin.define do
    name "Gogs简易Git服务" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :serach => 'headers', :text => 'i_like_gogs'   }
]
end