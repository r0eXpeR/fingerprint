Plugin.define do
    name "wspx" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Copyright: wspx'   },
    { :search => "headers", :text => 'X-Powered-By: ANSI C'   }
]
end