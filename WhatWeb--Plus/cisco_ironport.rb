Plugin.define do
    name "cisco_ironport" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco IronPort'   }
]
end