Plugin.define do
    name "reviewboard" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'rbsessionid'   },
    { :text => '/static/rb/images/delete'   }
]
end