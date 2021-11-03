Plugin.define do
    name "spammark邮件信息安全网关" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/cgi-bin/spammark?empty=1'     },
    { :text => '/cgi-bin/spammark?empty=1'    },
    { :text => 'Spammark邮件信息安全网关'     }
]
end