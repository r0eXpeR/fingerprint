Plugin.define do
    name "basic_auth" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Www-Authenticate: Basic'   }
]
end