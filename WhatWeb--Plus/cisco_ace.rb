Plugin.define do
    name "cisco_ace" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ACE XML Gateway'   }
]
end