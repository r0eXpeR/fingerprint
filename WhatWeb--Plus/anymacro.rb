Plugin.define do
    name "anymacro" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'LOGIN_KEY'   },
    { :text => 'AnyWebApp'   },
    { :text => 'document.aa.F_email'   }
]
end