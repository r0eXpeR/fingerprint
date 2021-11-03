Plugin.define do
    name "tencent_waterproof_wall" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /captcha\.qq\.com..*/, :search => 'body'  },
    { :search => 'body', :regexp => /.TCaptcha\.js/  }
]
end