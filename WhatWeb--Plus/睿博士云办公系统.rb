Plugin.define do
    name "睿博士云办公系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/studentSign/toLogin.di'   },
    { :text => '/user/toUpdatePasswordPage.di'   }
]
end