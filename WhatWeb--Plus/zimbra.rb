Plugin.define do
    name "zimbra" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ZM_TEST'    },
    { :search => 'headers[set-cookie]', :regexp => /true/   }
]
end