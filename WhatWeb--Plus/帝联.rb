Plugin.define do
    name "帝联" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: DNION'   },
    { :search => "headers", :text => 'fastcdn.com'   }
]
end