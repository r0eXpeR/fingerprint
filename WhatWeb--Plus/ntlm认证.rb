Plugin.define do
    name "ntlm认证" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'NTLM'   }
]
end