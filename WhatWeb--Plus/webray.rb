Plugin.define do
    name "webray" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Drivedby: RaySrv'   },
    { :search => "headers", :text => 'Rayengine'   }
]
end