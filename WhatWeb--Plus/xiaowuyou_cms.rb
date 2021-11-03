Plugin.define do
    name "xiaowuyou_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/admin/login.asp', :text => 'class=pwd id=VerifyCode'   }
]
end