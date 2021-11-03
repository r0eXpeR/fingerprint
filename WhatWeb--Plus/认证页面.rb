Plugin.define do
    name "认证页面" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Www-Authenticate'   }
]
end