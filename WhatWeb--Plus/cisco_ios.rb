Plugin.define do
    name "cisco_ios" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: cisco-IOS'   }
]
end