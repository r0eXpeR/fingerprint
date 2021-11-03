Plugin.define do
    name "zdsoft_cnet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/cnet/system/login.jsp', :text => 'ZDSOFT.NET'   },
    { :url => '/cnet/template/1/common.css', :text => 'modelno{'   }
]
end