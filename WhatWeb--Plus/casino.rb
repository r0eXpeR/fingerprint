Plugin.define do
    name "casino" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => '_CASinoApp_session'   },
    { :search => "headers", :text => '_my-casino_session'   },
    { :text => 'casino_and_overrides.css'   }
]
end