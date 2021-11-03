Plugin.define do
    name "dell_remote_access_device" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'RAC_ONE_HTTP'   },
    { :text => 'RAC_ONE_HTTP'   }
]
end