Plugin.define do
    name "腾讯企业邮箱" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/cgi-bin/getinvestigate?flowid='   }
]
end