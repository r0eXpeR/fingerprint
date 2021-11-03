Plugin.define do
    name "泰信tmailer邮件系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Tmailer'   },
    { :text => 'content="Tmailer'   },
    { :text => 'href="/tmailer/img/logo/favicon.ico'   }
]
end