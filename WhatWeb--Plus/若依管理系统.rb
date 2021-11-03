Plugin.define do
    name "若依管理系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /ruoyi\/login.js|ruoyi\/js\/ry-ui.js/   }
]
end