Plugin.define do
    name "livechat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.livechatinc\.com..*tracking\.js/, :search => 'body'  }
]
end