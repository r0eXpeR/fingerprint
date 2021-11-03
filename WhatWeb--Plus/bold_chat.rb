Plugin.define do
    name "bold_chat" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /^https?:..vmss\.boldchat\.com.aid.\d{18}.bc\.vms4.vms\.js/  }
]
end