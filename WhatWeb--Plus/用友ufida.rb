Plugin.define do
    name "用友ufida" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/System/Login/Login.asp?AppID='     },
    { :text => '/System/Login/Login.asp?AppID='    }
]
end