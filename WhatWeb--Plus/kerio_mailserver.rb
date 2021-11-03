Plugin.define do
    name "kerio_mailserver" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Kerio MailServer'   },
    { :text => 'Kerio MailServer'   }
]
end