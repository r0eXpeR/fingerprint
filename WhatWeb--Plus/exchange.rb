Plugin.define do
    name "exchange" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'OutlookSession'     },
    { :search => "headers", :text => 'owa'     },
    { :text => '/owa/auth.owa'     },
    { :text => '/owa/auth.owa'    },
    { :text => 'owaLgnBdy'     }
]
end