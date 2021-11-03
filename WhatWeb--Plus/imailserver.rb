Plugin.define do
    name "imailserver" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Ipswitch-IMail'   },
    { :text => 'myICalUserName'   }
]
end